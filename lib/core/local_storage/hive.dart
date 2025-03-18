import 'package:e_commerce_fitmode/constant.dart';
import 'package:e_commerce_fitmode/features/my_orders/data/hive_model/my_order_product_list_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class LocalStorage {
  static void saveProduct(
      {required String image, title, subtitle, price}) async {
    var box = await Hive.openBox<MyOrderProductList>(hiveMyOrder);
    var myOrders = MyOrderProductList(
        image: image, title: title, subtitle: subtitle, price: price);
    await box.add(myOrders);
  }

  static void getProducts() async {
    var box = await Hive.openBox<MyOrderProductList>(hiveMyOrder);
    for (var product in box.values) {
      print(
          'Title: ${product.title}, Price: ${product.price}, SubTitle :${product.subtitle}');
    }
  }
}
