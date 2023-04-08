import 'package:consumption_api/app/features/home/products/domain/repository/product_repository.dart';
import 'package:consumption_api/app/features/home/products/domain/usecase/product_usecase.dart';
import 'package:consumption_api/app/features/home/products/external/datasource/get_products_datasource.dart';
import 'package:consumption_api/app/features/home/products/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/features/home/products/external/http/http_client.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => GetProductsDatasource(httpClient: i())),
    Bind((i) => ProductUsecase(i())),
    Bind((i) => ProductRepository(i())),
    Bind((i) => HttpClient()),
  ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(Modular.initialRoute, module: HomeModule()),
      ];
}
