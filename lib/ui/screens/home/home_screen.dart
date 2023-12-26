import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wish_list/config/constant/constants.dart';
import 'package:wish_list/models/models.dart';
import 'package:wish_list/provider/product_provider.dart';

import '../../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> products = context.watch<ProductProvider>().products;
    List<Product> wishList = context.watch<ProductProvider>().wishList;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Products"),
        actions: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
            child: Badge(
              label: Text(wishList.length.toString()),
              child: IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                  size: 30,
                ),
                onPressed: () => Navigator.pushNamed(context, cartRoute),
              ),
            ),
          ),
        ],
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
