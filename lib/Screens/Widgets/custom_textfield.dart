import 'package:flutter/material.dart';
import 'package:techqrmaintance/core/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final int? maxLine;
  final double? containerLength;
  final double curveRadius;
  final Widget? sufficChild;

  final bool boolVal;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.obscureText = false,
    this.maxLine,
    this.containerLength,
    required this.curveRadius,
    this.sufficChild,
    required this.boolVal,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: containerLength,
        decoration: BoxDecoration(
          color: const Color(0xFFF5F4F4), // Background color
          borderRadius: BorderRadius.circular(curveRadius), // Rounded corners
        ),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none, // Remove default border
              suffixIcon: sufficChild,
              suffixIconColor: primaryBlack),
          style: TextStyle(color: primaryBlack), // Text style
          maxLines: maxLine,
          readOnly: boolVal,
        ),
      ),
    );
  }
}
