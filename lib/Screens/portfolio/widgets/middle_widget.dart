import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/portfolio/widgets/container_values.dart';
import 'package:techqrmaintance/core/colors.dart';

class MiddleWidget extends StatelessWidget {
  const MiddleWidget({
    super.key,
    required this.name,
    required this.dob,
    required this.role,
  });

  final String name;
  final String dob;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          color: primaryTransparent,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: primaryBlack),
        ),
        child: Column(
          children: [
            ContainerInsidevaluesWidgets(
              icon: Icons.account_circle_outlined,
              text: name.toUpperCase(),
            ),
            ContainerInsidevaluesWidgets(
              icon: Icons.cake_outlined,
              text: dob,
            ),
            ContainerInsidevaluesWidgets(
              icon: Icons.work_outline_outlined,
              text: role.toUpperCase(),
            ),
          ],
        ),
      ),
    );
  }
}
