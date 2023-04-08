import 'dart:convert';

import 'package:consumption_api/app/features/home/products/domain/entity/product_entity.dart';
import 'package:consumption_api/app/features/home/products/external/http/i_http_client.dart';
import 'package:consumption_api/app/features/home/products/external/mappers/product_mapper.dart';
import 'package:consumption_api/app/features/home/products/infra/i_get_products_datasource.dart';

class GetProductsDatasource implements IGetProductsDatasource {
  final IHttpClient _httpClient;

  const GetProductsDatasource({required IHttpClient httpClient}) : _httpClient = httpClient;

  @override
  Future<List<ProductEntity>> call() async {
    final httpResponse = await _httpClient.get(url: 'https://dummyjson.com/products');

    final body = jsonDecode(httpResponse.body);
    return body['products'].map((e) => ProductMapper.fromMap(e)).toList().cast<ProductEntity>();
  }
}
