import 'package:flutter/material.dart';
import 'package:wish_list/config/constant/constants.dart';
import 'package:wish_list/config/routes/app_routes.dart';

void main() {
  runApp(const MainApp());
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
