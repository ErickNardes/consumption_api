// ignore_for_file: prefer_initializing_formals

import 'package:consumption_api/app/features/home/products/domain/usecase/i_product_usecase.dart';
import 'package:consumption_api/app/features/home/products/presenter/store/products_state.dart';
import 'package:flutter_triple/flutter_triple.dart';

class ProductStore extends Store<ProductState> {
  final IProductUsecase iProductUsecase;

  ProductStore(IProductUsecase iProductUsecase)
      : iProductUsecase = iProductUsecase,
        super(ProductState.init());

  Future<void> getProducts() async {
    setLoading(true);
    final response = await iProductUsecase.call();
    response.fold(
      (l) => setError(l),
      (r) => update(
        state.copyWith(products: r),
      ),
    );

    setLoading(false);
  }
}
