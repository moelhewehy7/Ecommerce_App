import 'package:hive_flutter/hive_flutter.dart';
part 'product_model.g.dart';

@HiveType(typeId: 0)
class ProductModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String description;
  @HiveField(2)
  final String discount;
  @HiveField(3)
  final String brand;
  @HiveField(4)
  final double price;
  @HiveField(5)
  final String imageUrl;
  @HiveField(6)
  final String id;

  ProductModel({
    required this.title,
    required this.id,
    required this.discount,
    required this.brand,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}
