// import 'package:flutter/material.dart';
// import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
// import 'package:techqrmaintance/Screens/history/services_history.dart';
// import 'package:techqrmaintance/Screens/home/adddevicebutton/customer_finder.dart';
// import 'package:techqrmaintance/Screens/notifications/notification_screen.dart';
// import 'package:techqrmaintance/Screens/tasks/task_screen.dart';
// import 'package:techqrmaintance/core/colors.dart';

// class GridContainerButton extends StatelessWidget {
//   final String title;
//   final String imagePath;

//   const GridContainerButton({
//     super.key,
//     required this.title,
//     required this.imagePath,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         switch (title) {
//           case "NOTIFICATION":
//             Navigator.of(context).push(createRoute(NotificationScreen()));
//             break;

//           case "ADD DEVICE":
//             Navigator.of(context).push(createRoute(CustomerFinder(
//               key: UniqueKey(),
//             )));
//             break;

//           case "VIEW TASKS":
//             Navigator.of(context).push(createRoute(TaskScreen(
//               key: UniqueKey(),
//             )));
//             break;

//           case "SERVICE\nHISTORY":
//             Navigator.of(context).push(createRoute(ServicesHistoryScreen(
//               key: UniqueKey(),
//             )));
//             break;
//           default:
//         }
//       },
//       child: Container(
//         height: 17,
//         width: 17,
//         padding: EdgeInsets.only(top: 30),
//         decoration: BoxDecoration(
//             border: Border.all(width: 2, color: primaryBlue),
//             borderRadius: BorderRadius.circular(30),
//             color: primaryWhite),
//         child: Column(
//           children: [
//             Container(
//               height: 80,
//               width: 80,
//               decoration: BoxDecoration(
//                   image: DecorationImage(image: AssetImage(imagePath))),
//             ),
//             SizedBox(
//               height: 5,
//             ),
//             Text(
//               title,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(
//                   color: primaryBlue,
//                   fontWeight: FontWeight.w900,
//                   fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/history/services_history.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/customer_finder.dart';
import 'package:techqrmaintance/Screens/notifications/notification_screen.dart';
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
          case "NOTIFICATION":
            Navigator.of(context).push(createRoute(NotificationScreen()));
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
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: primaryBlue),
          borderRadius: BorderRadius.circular(20),
          color: primaryWhite,
          boxShadow: [
            BoxShadow(
              color: primaryBlue.withOpacity(0.12),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 70,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: primaryBlue.withOpacity(0.08),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 12),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: primaryBlue,
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                  height: 1.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<GridContainerButton> gridList = [
  const GridContainerButton(
    title: "NOTIFICATION",
    imagePath: 'assets/images/notification.png',
  ),
  const GridContainerButton(
    title: "ADD DEVICE",
    imagePath: "assets/images/wireless-internet 1.png",
  ),
  const GridContainerButton(
    title: "VIEW TASKS",
    imagePath: "assets/images/task 1.png",
  ),
  const GridContainerButton(
    title: "SERVICE\nHISTORY",
    imagePath: "assets/images/documents 1.png",
  ),
];
