import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/portfolio/widgets/container_values.dart';

class MiddleWidget extends StatelessWidget {
  const MiddleWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height - 620,
      width: width - 50,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        children: [
          ContainerInsidevaluesWidgets(
            icon: Icons.account_circle_outlined,
            text: "Name",
          ),
          ContainerInsidevaluesWidgets(
            icon: Icons.cake_outlined,
            text: "DOB",
          ),
          ContainerInsidevaluesWidgets(
            icon: Icons.work_outline_outlined,
            text: "Role",
          ),
        ],
      ),
    );
  }
}
