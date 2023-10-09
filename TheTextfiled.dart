import 'package:flutter/material.dart';

class TheTextfiled extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const TheTextfiled({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 10, 48, 78)),
          ),
          fillColor: Color.fromARGB(255, 176, 216, 248),
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
