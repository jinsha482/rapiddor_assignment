// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productlist.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductListModelAdapter extends TypeAdapter<ProductListModel> {
  @override
  final int typeId = 1;

  @override
  ProductListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductListModel(
      id: fields[0] as int?,
      title: fields[1] as String?,
      price: fields[2] as dynamic,
      category: fields[3] as String?,
      description: fields[4] as String?,
      image: fields[5] as String?,
      quantity: fields[6] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductListModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
