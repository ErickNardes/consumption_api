import 'package:consumption_api/app/features/home/products/domain/entity/product_entity.dart';

abstract class IGetProductsDatasource {
  Future<List<ProductEntity>> call();
}
