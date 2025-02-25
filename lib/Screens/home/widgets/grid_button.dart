import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/history/services_history.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/customer_finder.dart';
import 'package:techqrmaintance/Screens/qrscan/scan_qr.dart';
import 'package:techqrmaintance/Screens/tasks/task_screen.dart';
import 'package:techqrmaintance/core/colors.dart';

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
            Navigator.of(context).push(createRoute(ScanQr(
              key: Key("Repair"),
            )));

            break;

          case "ADD DEVICE":
            Navigator.of(context).push(createRoute(CustomerFinder(
              key: UniqueKey(),
            )));
            break;

          case "VIEW TASKS":
            Navigator.of(context).push(createRoute(TaskScreen(
              key: UniqueKey(),
            )));
            break;

          case "SERVICE\nHISTORY":
            Navigator.of(context).push(createRoute(ServicesHistoryScreen(
              key: UniqueKey(),
            )));
            break;
          default:
        }
      },
      child: Container(
        height: 17,
        width: 17,
        padding: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: primaryBlue,
        ),
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
                  color: primaryWhite,
                  fontWeight: FontWeight.w900,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
