import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wish_list/models/models.dart';
import 'package:wish_list/provider/product_provider.dart';

import '../../widgets/product_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> wishList = context.watch<ProductProvider>().wishList;
    print(wishList.length);
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Cart"),
      ),
      body: ListView.builder(
          itemCount: wishList.length,
          itemBuilder: (_, i) => Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: FlutterLogo(),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [Text("data"), Text("Price")],
                      ),
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        TextButton(onPressed: null, child: const Text("+")),
                        Text("n"),
                        TextButton(onPressed: null, child: const Text("-")),
                      ],
                    ))
                  ],
                ),
              )),
    );
  }
}
