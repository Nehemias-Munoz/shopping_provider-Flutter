import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wish_list/models/models.dart';
import 'package:wish_list/provider/product_provider.dart';

import '../../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> products = context.read<ProductProvider>().products;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Products"),
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: products.length,
        itemBuilder: (_, i) => ProductCard(
          product: products[i],
        ),
      ),
    );
  }
}
