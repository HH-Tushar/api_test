class ModelData {
  ModelData({
    required this.success,
    required this.error,
    required this.product,
    required this.pageInfo,
  });
  late final int success;
  late final bool error;
  late final List<ProductList> product;
  late final PageInfo pageInfo;

  ModelData.fromJson(Map<String, dynamic> json) {
    success = json['Success'];
    error = json['error'];
    product = List.from(json['ProductList'])
        .map((e) => ProductList.fromJson(e))
        .toList();
    pageInfo = PageInfo.fromJson(json['PageInfo']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['Success'] = success;
    data['error'] = error;
    data['ProductList'] = product.map((e) => e.toJson()).toList();
    data['PageInfo'] = pageInfo.toJson();
    return data;
  }
}
class ProductList {
  ProductList({
    required this.Id,
    this.Type,
    this.ParentCode,
    required this.Name,
    required this.Code,
    required this.Price,
    required this.CostPrice,
    required this.UnitName,
    required this.CategoryName,
    required this.BrandName,
    required this.ModelName,
    required this.VariantName,
    required this.SizeName,
    required this.ColorName,
    required this.OldPrice,
    this.ImagePath,
    required this.CommissionAmount,
    required this.CommissionPer,
    required this.PCTN,
    required this.ProductBarcode,
    required this.Description,
    required this.ChildList,
    required this.Batchserial,
    required this.WarehouseList,
    required this.CurrentStock,
    required this.CreateDate,
    required this.UpdateDate,
  });
  late final int Id;
  late final String? Type;
  late final  ParentCode;
  late final String Name;
  late final String Code;
  late final int Price;
  late final int CostPrice;
  late final String UnitName;
  late final String CategoryName;
  late final String BrandName;
  late final String ModelName;
  late final String VariantName;
  late final String SizeName;
  late final String ColorName;
  late final int OldPrice;
  late final String? ImagePath;
  late final int CommissionAmount;
  late final int CommissionPer;
  late final int PCTN;
  late final String ProductBarcode;
  late final String Description;
  late final List<dynamic> ChildList;
  late final List<BatchSerial> Batchserial;
  late final List<dynamic> WarehouseList;
  late final dynamic CurrentStock;
  late final String CreateDate;
  late final String UpdateDate;
  ProductList.fromJson(Map<String, dynamic> json) {
    Id = json['Id'];
    Type = null;
    ParentCode = null;
    Name = json['Name'];
    Code = json['Code'];
    Price = json['Price'];
    CostPrice = json['CostPrice'];
    UnitName = json['UnitName'];
    CategoryName = json['CategoryName'];
    BrandName = json['BrandName'];
    ModelName = json['ModelName'];
    VariantName = json['VariantName'];
    SizeName = json['SizeName'];
    ColorName = json['ColorName'];
    OldPrice = json['OldPrice'];
    ImagePath = json['ImagePath'];
    CommissionAmount = json['CommissionAmount'];
    CommissionPer = json['CommissionPer'];
    PCTN = json['PCTN'];
    ProductBarcode = json['ProductBarcode'];
    Description = json['Description'];
    ChildList = List.castFrom<dynamic, dynamic>(json['ChildList']);
    Batchserial = List.from(json['BatchSerial'])
        .map((e) => BatchSerial.fromJson(e))
        .toList();
    WarehouseList = List.castFrom<dynamic, dynamic>(json['WarehouseList']);
    CurrentStock = json['CurrentStock'];
    CreateDate = json['CreateDate'];
    UpdateDate = json['UpdateDate'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Id'] = Id;
    _data['Type'] = Type;
    _data['ParentCode'] = ParentCode;
    _data['Name'] = Name;
    _data['Code'] = Code;
    _data['Price'] = Price;
    _data['CostPrice'] = CostPrice;
    _data['UnitName'] = UnitName;
    _data['CategoryName'] = CategoryName;
    _data['BrandName'] = BrandName;
    _data['ModelName'] = ModelName;
    _data['VariantName'] = VariantName;
    _data['SizeName'] = SizeName;
    _data['ColorName'] = ColorName;
    _data['OldPrice'] = OldPrice;
    _data['ImagePath'] = ImagePath;
    _data['CommissionAmount'] = CommissionAmount;
    _data['CommissionPer'] = CommissionPer;
    _data['PCTN'] = PCTN;
    _data['ProductBarcode'] = ProductBarcode;
    _data['Description'] = Description;
    _data['ChildList'] = ChildList;
    _data['BatchSerial'] = Batchserial.map((e) => e.toJson()).toList();
    _data['WarehouseList'] = WarehouseList;
    _data['CurrentStock'] = CurrentStock;
    _data['CreateDate'] = CreateDate;
    _data['UpdateDate'] = UpdateDate;
    return _data;
  }
}
class BatchSerial {
  BatchSerial({
    required this.BatchSerialNo,
    required this.BatchQty,
    required this.Amount,
    required this.PurchaseDate,
    required this.SupplierName,
  });
  late final String BatchSerialNo;
  late final int BatchQty;
  late final int Amount;
  late final String PurchaseDate;
  late final String SupplierName;

  BatchSerial.fromJson(Map<String, dynamic> json) {
    BatchSerialNo = json['BatchSerialNo'];
    BatchQty = json['BatchQty'];
    Amount = json['Amount'];
    PurchaseDate = json['PurchaseDate'];
    SupplierName = json['SupplierName'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['BatchSerialNo'] = BatchSerialNo;
    _data['BatchQty'] = BatchQty;
    _data['Amount'] = Amount;
    _data['PurchaseDate'] = PurchaseDate;
    _data['SupplierName'] = SupplierName;
    return _data;
  }
}
class PageInfo {
  PageInfo({
    required this.PageNo,
    required this.PageSize,
    required this.PageCount,
    required this.TotalRecordCount,
  });
  late final int PageNo;
  late final int PageSize;
  late final int PageCount;
  late final int TotalRecordCount;

  PageInfo.fromJson(Map<String, dynamic> json) {
    PageNo = json['PageNo'];
    PageSize = json['PageSize'];
    PageCount = json['PageCount'];
    TotalRecordCount = json['TotalRecordCount'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['PageNo'] = PageNo;
    _data['PageSize'] = PageSize;
    _data['PageCount'] = PageCount;
    _data['TotalRecordCount'] = TotalRecordCount;
    return _data;
  }
}