import 'package:flutter/material.dart';
import 'package:wish_list/config/constant/constants.dart';
import 'package:wish_list/ui/screens/screens.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case cartRoute:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => ErrorScreen(
            routeName: settings.name ?? "none",
          ),
        );
    }
  }
}
