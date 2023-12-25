import 'package:flutter/material.dart';

import '../../models/models.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //todo: replace with image
            Expanded(flex: 3, child: FlutterLogo()),
            Expanded(flex: 1, child: Text(product.name)),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(product.price.toString()),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_bag_outlined),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
