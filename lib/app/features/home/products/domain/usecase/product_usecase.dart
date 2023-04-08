import 'package:consumption_api/app/features/home/products/domain/entity/product_entity.dart';
import 'package:consumption_api/app/features/home/products/domain/repository/i_product_repository.dart';
import 'package:consumption_api/app/features/home/products/domain/usecase/i_product_usecase.dart';
import 'package:dartz/dartz.dart';

class ProductUsecase implements IProductUsecase {
  final IProductRepository _repository;

  const ProductUsecase(this._repository);

  @override
  Future<Either<Exception, List<ProductEntity>>> call() async {
    return await _repository.call();
  }
}
