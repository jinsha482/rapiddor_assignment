import 'package:hive/hive.dart';

part 'productlist.model.g.dart';
@HiveType(typeId: 1)

class ProductListModel {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? title;
  @HiveField(2)
  dynamic price;
  @HiveField(3)
  String? category;
  @HiveField(4)
  String? description;
  @HiveField(5)
  String? image;
  @HiveField(6)
  int? quantity;

  ProductListModel(
      {this.id,
      this.title,
      this.price,
      this.category,
      this.description,
      this.image,
      this.quantity});

  ProductListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    category = json['category'];
    description = json['description'];
    image = json['image'];
    quantity = json['quantity'];
  }

}
