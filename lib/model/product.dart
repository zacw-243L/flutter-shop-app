class Product {
  const Product({
    required this.id,
    required this.name,
    required this.price,
  });

  final int id;

  final String name;
  final int price;

  String get assetName => '${id.toString()}-0.jpg';
  //returns filename of product image
}
