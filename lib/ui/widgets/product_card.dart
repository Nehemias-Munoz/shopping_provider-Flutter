import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wish_list/provider/product_provider.dart';

import '../../models/models.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      key: ObjectKey(product),
      child: Container(
        margin: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //todo: replace with image
            Expanded(
              flex: 3,
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    product.image,
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            Expanded(flex: 1, child: Text(product.name)),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(product.price.toString()),
                  IconButton(
                    onPressed: () {
                      if (context
                          .read<ProductProvider>()
                          .wishList
                          .contains(product)) {
                        context
                            .read<ProductProvider>()
                            .removeFromWishList(product);
                      } else {
                        context.read<ProductProvider>().addToWishList(product);
                      }
                    },
                    icon: Icon(context
                            .watch<ProductProvider>()
                            .wishList
                            .contains(product)
                        ? Icons.shopping_bag
                        : Icons.shopping_bag_outlined),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
