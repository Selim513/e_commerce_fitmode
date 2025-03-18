import 'package:hive_flutter/hive_flutter.dart';

part 'my_order_product_list_model.g.dart';

@HiveType(typeId: 1)
class MyOrderProductList {
  @HiveField(0)
  final String image;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String subtitle;
  @HiveField(3)
  final String price;

  MyOrderProductList(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.price});
}
