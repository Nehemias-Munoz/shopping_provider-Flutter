import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wish_list/models/models.dart';
import 'package:wish_list/provider/product_provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> wishList = context.watch<ProductProvider>().wishList;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text("Cart"),
      ),
      body: wishList.length == 0
          ? const Center(
              child: Text("The cart is empty"),
            )
          : ListView.builder(
              itemCount: wishList.length,
              itemBuilder: (_, i) => Card(
                    margin: const EdgeInsets.all(5),
                    child: Container(
                      height: 150,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.network(
                              wishList[i].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(wishList[i].name),
                                Text(wishList[i].price.toString())
                              ],
                            ),
                          ),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: null, child: const Text("+")),
                                  Text("n"),
                                  TextButton(
                                      onPressed: null, child: const Text("-")),
                                ],
                              ),
                              ElevatedButton.icon(
                                onPressed: () => context
                                    .read<ProductProvider>()
                                    .removeFromWishList(wishList[i]),
                                icon: const Icon(Icons.delete_forever),
                                label: const Text("Delete"),
                              )
                            ],
                          ))
                        ],
                      ),
                    ),
                  )),
    );
  }
}
