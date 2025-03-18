// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_order_product_list_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MyOrderProductListAdapter extends TypeAdapter<MyOrderProductList> {
  @override
  final int typeId = 1;

  @override
  MyOrderProductList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MyOrderProductList(
      image: fields[0] as String,
      title: fields[1] as String,
      subtitle: fields[2] as String,
      price: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MyOrderProductList obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.image)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.subtitle)
      ..writeByte(3)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyOrderProductListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
