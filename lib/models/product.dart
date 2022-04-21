class Product{
  bool inCart=false;
  final int? id;
  int? qty;
  final String? image;
  final String? brand;
  final String? model;
  String? description;
  final String? fuel;
  double? price;

  Product({
    this.id,
    this.qty,
    this.image,
    this.brand,
    this.model,
    this.description,
    this.price,
    this.fuel,});

}