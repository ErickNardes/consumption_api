import 'package:consumption_api/app/features/home/products/domain/entity/product_entity.dart';
import 'package:dartz/dartz.dart';

abstract class IProductUsecase {
  Future<Either<Exception, List<ProductEntity>>> call();
}
