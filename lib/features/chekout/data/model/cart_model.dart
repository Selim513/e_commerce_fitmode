class CartModel {
  int id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;

  CartModel({
    required this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        // id: json['id'] as int,
        id: (json['id'] as num?)?.toInt() ?? 0, // إضافة التحقق هنا
        title: json['title'] as String?,
        price: (json['price'] as num?)?.toDouble(),
        description: json['description'] as String?,
        category: json['category'] as String?,
        image: json['image'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'price': price,
        'description': description,
        'category': category,
        'image': image,
      };
}
