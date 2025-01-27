import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final double height;
  final double width;
  final Key? key;

  CustomMaterialButton({
    this.key,
    required this.text,
    required this.onPressed,
    this.textColor = Colors.white, // Default text color is white
    this.height = 60.0, // Default height
    this.width = 280.0, // Default width
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Color(0xFF165069), // Button color
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
