class ProductModel {
  final String title;
  final String? productSize;
  final String productPicture;
  final num price;
  ProductModel({
    required this.title,
    this.productSize,
    required this.productPicture,
    required this.price,
  });
}
