import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  ModelData? model;

//fetch data from server
  Future<ModelData> getData() async {
    //using try catch to avoid any kind of unexpected error to build connection with respected server
    try {
      var response = await http.get(
          Uri.parse(
            "https://www.pqstec.com/InvoiceApps/Values/GetProductList?pageNo=1&pageSize=100searchquery=boys",
          ),
          headers: {
            'Authorization':
                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiI0MTMiLCJDdXJyZW50Q29tSWQiOiIxIiwibmJmIjoxNjk1NDQyMjgxLCJleHAiOjE2OTYwNDcwODEsImlhdCI6MTY5NTQ0MjI4MX0.bYhMEKguSHsthNc_4gORhBmN6lzSvj4rqyM6x011usU"
          });
      //checking if server responses with success code
      if (response.statusCode == 200) {
        debugPrint("success");
        //checking if responded body contained any value
        if (response.body.isNotEmpty) {
          var responseDate = jsonDecode(response.body);

          //tempory storing all data from respond in model class with help of json
          model = ModelData.fromJson(responseDate);
        }

      }
    } catch (error) {
      //checking the error
      debugPrint("$error");
    }

    return model!;
  }

  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        title: const Text("API TEST"),
        elevation: 0,
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            //if snapshot has any data then we will build a list view
            return snapshot.hasData
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: model!.product.length,
                    itemBuilder: (_, index) => ListTile(
                      minVerticalPadding: 8,
                      title: Text(model!.product[index].Name),
                      //we can use image in leading
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Brand : ${model!.product[index].BrandName}"),
                          Text("Category : ${model!.product[index].CategoryName}"),
                          Text("Price : ${model!.product[index].Price}\$"),
                        ],
                      ),
                    ),
                  )

            //in case data have not received yet we will show a loading text
                : const Text("Loading");
          }),
    );
  }
}
