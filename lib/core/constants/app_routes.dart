import 'package:flutter/material.dart';
import 'package:myapp/screens/home_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String details = '/details';
  
  // Static routes (for predefined screens)
  static Map<String, WidgetBuilder> get routes {
    return {
      home: (context) => HomeScreen(),
     // details: (context) => const DetailsScreen(),
    };
  }
  
  // Dynamic route handling (optional)
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case details:
      //   // You can pass arguments here
      //   return MaterialPageRoute(
      //     builder: (context) => const DetailsScreen(),
      //   );
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }
}
