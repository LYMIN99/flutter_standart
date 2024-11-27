import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.blue,
   //   accentColor: Colors.green,
      scaffoldBackgroundColor: Colors.white,
      textTheme: const TextTheme(
        // bodyText1: TextStyle(color: Colors.black),
        // bodyText2: TextStyle(color: Colors.grey),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.blue,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.black,
   //   accentColor: Colors.orange,
      scaffoldBackgroundColor: Colors.black,
      textTheme: const TextTheme(
        // bodyText1: TextStyle(color: Colors.white),
        // bodyText2: TextStyle(color: Colors.grey),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.orange,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
