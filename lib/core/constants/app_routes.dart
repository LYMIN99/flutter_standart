import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/details_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String details = '/details';
  
  // Static routes (for predefined screens)
  static Map<String, WidgetBuilder> get routes {
    return {
      home: (context) => const HomeScreen(),
      details: (context) => const DetailsScreen(),
    };
  }
  
  // Dynamic route handling (optional)
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case details:
        // You can pass arguments here
        return MaterialPageRoute(
          builder: (context) => const DetailsScreen(),
        );
      default:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
    }
  }
}
