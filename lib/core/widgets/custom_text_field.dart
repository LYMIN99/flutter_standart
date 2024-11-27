import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final TextInputType inputType;
  final String? Function(String?)? validator;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.inputType = TextInputType.text,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: inputType,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

// CustomTextField(
//   hintText: 'Enter your email',
//   controller: _emailController,
//   prefixIcon: Icon(Icons.email),
//   inputType: TextInputType.emailAddress,
//   validator: (value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter an email';
//     }
//     return null;
//   },
// )
