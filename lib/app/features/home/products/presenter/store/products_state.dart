// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../domain/entity/product_entity.dart';

class ProductState {
  final List<ProductEntity> products;
  ProductState({
    required this.products,
  });

  factory ProductState.init() => ProductState(
        products: [],
      );

  ProductState copyWith({
    List<ProductEntity>? products,
  }) {
    return ProductState(products: products ?? this.products);
  }
}
