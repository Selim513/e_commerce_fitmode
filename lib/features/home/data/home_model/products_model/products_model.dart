// import 'rating.dart';

// class ProductsModel {
//   int id;
//   String title;
//   double? price;
//   String? description;
//   String? category;
//   String? image;
//   Rating? rating;

//   ProductsModel({
//     required this.id,
//     required this.title,
//     this.price,
//     this.description,
//     this.category,
//     this.image,
//     this.rating,
//   });

//   factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
//         // id: json['id'] as int,
//         id: (json['id'] as num?)?.toInt() ?? 0, // إضافة التحقق هنا
//         title: json['title'] != null ? json['title'] as String : '',
//         price: (json['price'] as num?)?.toDouble(),
//         description: json['description'] as String? ?? '',
//         category: json['category'] as String?,
//         image: json['image'] as String?,
//         rating: json['rating'] == null
//             ? null
//             : Rating.fromJson(json['rating'] as Map<String, dynamic>),
//       );

//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'title': title,
//         'price': price,
//         'description': description,
//         'category': category,
//         'image': image,
//         'rating': rating?.toJson(),
//       };
// }
import 'rating.dart';

class ProductsModel {
  int id;
  String title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;
  int quantity; // إضافة حقل الكمية

  ProductsModel({
    required this.id,
    required this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
    this.quantity = 1, // قيمة افتراضية
  });

  // تعديل الدالة fromJson
  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        id: (json['id'] as num?)?.toInt() ?? 0,
        title: json['title'] != null ? json['title'] as String : '',
        price: (json['price'] as num?)?.toDouble(),
        description: json['description'] as String? ?? '',
        category: json['category'] as String?,
        image: json['image'] as String?,
        rating: json['rating'] == null
            ? null
            : Rating.fromJson(json['rating'] as Map<String, dynamic>),
        quantity: json['quantity'] as int? ?? 1, // إضافة الكمية
      );

  // تعديل الدالة toJson
  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'price': price,
        'description': description,
        'category': category,
        'image': image,
        'rating': rating?.toJson(),
        'quantity': quantity, // إضافة الكمية
      };
}
