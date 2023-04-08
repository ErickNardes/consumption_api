// ignore_for_file: use_function_type_syntax_for_parameters

import 'dart:io';

import 'package:consumption_api/app/features/home/products/presenter/pages/home_page.dart';
import 'package:consumption_api/app/features/home/products/presenter/store/product_store.dart';
import 'package:consumption_api/app/features/product_details/page/product_details_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'domain/repository/product_repository.dart';
import 'domain/usecase/product_usecase.dart';
import 'external/datasource/get_products_datasource.dart';

class HomeModule extends Module {
  @override
  List<Bind> binds = [
    Bind.lazySingleton((i) => ProductStore(i())),
    Bind((i) => GetProductsDatasource(httpClient: i())),
    Bind((i) => ProductUsecase(i())),
    Bind((i) => ProductRepository(i())),
    Bind((i) => HttpClient()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const HomePage(),
    )
  ];
}
