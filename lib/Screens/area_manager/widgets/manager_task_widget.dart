import 'package:flutter/material.dart';
import 'package:techqrmaintance/core/colors.dart';

class ManagerTaskWidget extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const ManagerTaskWidget({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(
          right: 30,
          left: 20,
          top: 65,
          bottom: 65,
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: primaryBlue),
          color: primaryWhite,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$title: ",
              style: TextStyle(
                color: primaryBlue,
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: primaryBlue,
            ),
          ],
        ),
      ),
    );
  }
}
