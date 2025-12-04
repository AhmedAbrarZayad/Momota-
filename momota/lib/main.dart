import 'package:flutter/material.dart';
import 'package:momota/router/router.dart';
import 'package:momota/strings/strings.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: AppStrings.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
