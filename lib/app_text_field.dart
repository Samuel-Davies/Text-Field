import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.keyboardType,
  });

  final TextEditingController controller;
  final String hint;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.center,
      keyboardType: keyboardType,
      cursorColor: Colors.red,
      style: const TextStyle(color: Colors.red),
      //obscureText: true,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        border: const OutlineInputBorder(),
        labelText: hint,
        labelStyle: const TextStyle(
          color: Colors.blue,
        ),
      ),
    );
  }
}
