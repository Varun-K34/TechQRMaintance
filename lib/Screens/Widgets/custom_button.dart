import 'package:flutter/material.dart';
import 'package:techqrmaintance/core/colors.dart';

class CustomMaterialButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final double height;
  final double width;

  const CustomMaterialButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textColor = primaryWhite, // Default text color is white
    this.height = 60.0, // Default height
    this.width = 280.0, // Default width
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: primaryBlue, // Button color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30), // Rounded corners
      ),
      padding:
          EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Button padding
      minWidth: width, // Set the width of the button
      height: height, // Set the height of the button
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 16, // Text size
          fontWeight: FontWeight.bold, // Bold text
        ),
      ),
    );
  }
}
