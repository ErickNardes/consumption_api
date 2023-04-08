import 'package:consumption_api/app/features/home/products/domain/entity/product_entity.dart';
import 'package:consumption_api/app/features/home/products/domain/repository/i_product_repository.dart';
import 'package:consumption_api/app/features/home/products/infra/i_get_products_datasource.dart';
import 'package:dartz/dartz.dart';

class ProductRepository implements IProductRepository {
  final IGetProductsDatasource _datasource;

  const ProductRepository(this._datasource);
  @override
  Future<Either<Exception, List<ProductEntity>>> call() async {
    try {
      final response = await _datasource.call();
      return Right(response);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
