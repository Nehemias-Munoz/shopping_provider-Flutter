import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wish_list/config/constant/constants.dart';
import 'package:wish_list/config/routes/app_routes.dart';
import 'package:wish_list/provider/product_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ProductProvider(), child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: AppRoutes.generateRoute,
      initialRoute: homeRoute,
    );
  }
}
