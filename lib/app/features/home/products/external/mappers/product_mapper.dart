import 'package:consumption_api/app/features/home/products/domain/entity/product_entity.dart';

class ProductMapper {
  static ProductEntity fromMap(Map<String, dynamic> map) {
    return ProductEntity(
      title: map['title'],
      description: map['description'],
      price: map['price'],
      category: map['category'],
      brand: map['brand'],
      photos: List<String>.from((map['images'] as List)),
    );
  }
}
