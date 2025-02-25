import 'package:flutter/material.dart';
import 'package:techqrmaintance/core/colors.dart';

class QrButton extends StatelessWidget {
  const QrButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      padding: EdgeInsets.only(
        top: 45,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: primaryBlue,
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/qr-code 1.png"))),
          ),
          Text(
            "SCAN QR",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: primaryWhite, fontWeight: FontWeight.w900, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
