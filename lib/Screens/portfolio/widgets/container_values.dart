import 'package:flutter/material.dart';
import 'package:techqrmaintance/core/colors.dart';

class ContainerInsidevaluesWidgets extends StatelessWidget {
  final IconData icon;
  final String text;
  const ContainerInsidevaluesWidgets({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 10,
        bottom: 5,
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50, // Add width to the container
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
            ),
            child: Icon(
              icon,
              color: primaryBlue,
              size: 35,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: TextStyle(
              color: primaryBlue,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
