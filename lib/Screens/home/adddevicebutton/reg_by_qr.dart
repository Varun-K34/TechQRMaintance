import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/widgets/qr_buttton.dart';
import 'package:techqrmaintance/Screens/qrscan/scan_qr.dart';
import 'package:techqrmaintance/core/colors.dart';

class RegisterByQr extends StatelessWidget {
  final int? id;
  const RegisterByQr({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register by QR",
          style: TextStyle(
            color: primaryBlue,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: primaryWhite,
      ),
      backgroundColor: primaryWhite,
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(createRoute(ScanQr(
              id: id,
              key: Key("Register"),
            )));
          },
          child: QrButton(),
        ),
      ),
    );
  }
}
