// Route
import 'package:flutter/material.dart';
import '../pages/home.dart';
import '../pages/landing.dart';
import '../pages/error.dart';

class AppPages {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LandingPage());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return MaterialPageRoute(builder: (_) => const ErrorPage());
    }
  }
}
