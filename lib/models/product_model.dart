class ProductModel {
  final String name;
  final String image;
  final int price;
  final String type;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    required this.type,
  });

  // Convert object → map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'price': price,
      'type': type,
    };
  }

  // Convert map → object
  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      name: map['name'],
      image: map['image'],
      price: map['price'],
      type: map['type'],
    );
  }
}
