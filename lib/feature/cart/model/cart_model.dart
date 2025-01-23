class CartModel {
  final String id;
  final num price;
  final String status;
  final String category;
  final String name;
  final num quantity;
  final num totalPrice;
  final String image;

  CartModel(
      {required this.id,
      required this.price,
      required this.status,
      required this.category,
      required this.name,
      required this.quantity,
      required this.totalPrice,
      required this.image});

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      id: json['_id'],
      price: json['price'],
      status: json['status'],
      category: json['category'],
      name: json['name'],
      quantity: json['quantity'],
      totalPrice: json['totalPrice'],
      image: json['image'],
    );
  }
}
