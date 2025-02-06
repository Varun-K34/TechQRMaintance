import 'package:flutter/material.dart';

class TopWidgetportfolio extends StatelessWidget {
  final String emailid;
  const TopWidgetportfolio({
    super.key, required this.emailid,
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
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "E-mail",
            style: TextStyle(
              color: Color(0xff165069),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            emailid,
            style: TextStyle(
              color: Color(0xff165069),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
