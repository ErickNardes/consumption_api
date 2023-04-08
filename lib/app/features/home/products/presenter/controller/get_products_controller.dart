// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:consumption_api/app/features/home/products/presenter/store/product_store.dart';

class GetProductController {
  final ProductStore productStore;
  GetProductController({
    required this.productStore,
  });

  Future<void> getProducts() async {
    await productStore.getProducts();
  }
}
