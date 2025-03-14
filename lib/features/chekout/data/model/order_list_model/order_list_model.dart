import 'item.dart';

class OrderListModel {
  List<Item>? items;

  OrderListModel({this.items});

  factory OrderListModel.fromJson(Map<String, dynamic> json) {
    return OrderListModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
