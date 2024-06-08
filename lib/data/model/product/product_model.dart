class ProductModel {
  String? category;
  String? title;
  String? description;
  int? price;
  List<String>? images;
  String? sId;
  String? updatedOn;
  String? createdOn;
  int? iV;

  ProductModel({
    this.category,
    this.title,
    this.description,
    this.price,
    this.images,
    this.sId,
    this.updatedOn,
    this.createdOn,
    this.iV,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    images = json['images'].cast<String>();
    sId = json['_id'];
    updatedOn = json['updatedOn'];
    createdOn = json['createdOn'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['images'] = this.images;
    data['_id'] = this.sId;
    data['updatedOn'] = this.updatedOn;
    data['createdOn'] = this.createdOn;
    data['__v'] = this.iV;
    return data;
  }
}
