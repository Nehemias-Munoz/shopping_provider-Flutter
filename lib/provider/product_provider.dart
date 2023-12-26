import 'package:flutter/material.dart';
import 'package:wish_list/models/models.dart';

//Generate fake data
List<Product> initialData = List.generate(
  10,
  (index) =>
      Product("Product $index", index * 1000, "http://placekitten.com/200/300"),
);

class ProductProvider extends ChangeNotifier {
  List<Product> _products = initialData;
  List<Product> get products => _products;
  List<Product> _wishList = [];
  List<Product> get wishList => _wishList;

  void addToWishList(Product product) {
    wishList.add(product);
    notifyListeners();
  }

  void removeFromWishList(Product product) {
    wishList.remove(product);
    notifyListeners();
  }
}
