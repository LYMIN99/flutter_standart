import 'package:flutter/material.dart';

class CustomSnackBar {
  static show(BuildContext context, String message, {Duration duration = const Duration(seconds: 2)}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
      ),
    );
  }
}

// CustomSnackBar.show(context, 'This is a custom snack bar');
