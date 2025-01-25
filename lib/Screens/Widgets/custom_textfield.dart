import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xFFE5E5E5), // Background color
          borderRadius: BorderRadius.circular(60), // Rounded corners
        ),
        padding:
            EdgeInsets.symmetric(horizontal: 30, vertical: 20), // Inner padding
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none, // Remove default border
          ),
          style: TextStyle(color: Colors.black), // Text style
        ),
      ),
    );
  }
}
