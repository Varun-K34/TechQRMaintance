import 'package:flutter/material.dart';
import 'package:techqrmaintance/core/colors.dart';

class TopWidgetportfolio extends StatelessWidget {
  final String emailid;
  const TopWidgetportfolio({
    super.key,
    required this.emailid,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryWhite,
            ),
            child: Icon(
              Icons.account_circle_outlined,
              color: primaryBlue,
              size: 150,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "E-mail",
            style: TextStyle(
              color: primaryBlue,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            emailid,
            style: TextStyle(
              color: primaryBlue,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
