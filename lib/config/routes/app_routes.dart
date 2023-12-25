import 'package:flutter/material.dart';
import 'package:wish_list/ui/screens/screens.dart';

const String initialRoute = "Home";

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => ErrorScreen(
            routeName: settings.name ?? "none",
          ),
        );
    }
  }
}
