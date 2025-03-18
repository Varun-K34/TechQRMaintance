import 'package:flutter/material.dart';
import 'package:techqrmaintance/core/colors.dart';

class ContainerTextRow extends StatelessWidget {
  final String title;
  final String value;
  const ContainerTextRow({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: primaryBlue,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(value,
            style: TextStyle(
              color: primaryBlue,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ))
      ],
    );
  }
}
