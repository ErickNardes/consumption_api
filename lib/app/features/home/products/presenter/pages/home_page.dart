// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:consumption_api/app/features/home/products/presenter/store/product_store.dart';
import 'package:consumption_api/app/features/home/products/presenter/widgets/card_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProductStore store = Modular.get();
  @override
  void initState() {
    super.initState();
    store.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Products Api',
        ),
      ),
      body: ScopedBuilder(
        store: store,
        onLoading: (_) => const Center(child: CircularProgressIndicator()),
        onState: (contex, snapshot) {
          return GridView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: store.state.products.length,
            itemBuilder: (conext, index) {
              final product = store.state.products[index];

              return CardProductWidget(
                image: product.photos[0],
                title: product.title,
                description: product.description,
                price: product.price.toString(),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
            ),
          );
        },
      ),
    );
  }
}
