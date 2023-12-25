import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  ErrorScreen({super.key, required this.routeName});
  String routeName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Column(
            children: [
              Text(
                "No route defined $routeName",
              ),
              ElevatedButton.icon(
                  onPressed: () => Navigator.popAndPushNamed(context, "/"),
                  icon: const Icon(Icons.replay_outlined),
                  label: const Text("Volver a inicio"))
            ],
          ),
        ),
      ),
    );
  }
}
