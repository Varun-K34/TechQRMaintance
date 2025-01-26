import 'dart:math';

import 'package:flutter/material.dart';

class GridContainerButton extends StatelessWidget {
  final String title;
  final String imagePath;

  const GridContainerButton({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case "SCAN QR":
            break;

          case "ADD DEVICE":
            break;

          case "VIEW TASKS":
            break;

          case "SERVICE\nHISTORY":
            break;
          default:
        }
      },
      child: Container(
        height: 17,
        width: 17,
        padding: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Color(0xff165069)),
        child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imagePath))),
            ),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
