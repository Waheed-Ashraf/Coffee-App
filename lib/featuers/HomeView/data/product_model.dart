class ProductModel {
  final int id;
  final String title;
  final String productPicture;
  final num price;
  int quantity = 0;
  int quant = 1;

  ProductModel({
    required this.id,
    required this.title,
    required this.productPicture,
    required this.price,
  });
}
