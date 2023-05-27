import 'package:flutter/material.dart';
import 'package:smarteschool_apps/routes/app_pages.dart';
import './data/partials/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _router = AppPages();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      onGenerateRoute: _router.onGenerateRoute,
    );
  }
}
