import 'package:flutter/material.dart';
import 'package:techqrmaintance/core/colors.dart';

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
          color: const Color(0xFFF5F4F4), // Background color
          borderRadius: BorderRadius.circular(60), // Rounded corners
        ),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            border: InputBorder.none, // Remove default border
          ),
          style: TextStyle(color: primaryBlack), // Text style
        ),
      ),
    );
  }
}
