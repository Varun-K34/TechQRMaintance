// import 'package:flutter/material.dart';
// import 'package:techqrmaintance/core/colors.dart';

// class TopWidgetportfolio extends StatelessWidget {
//   final String emailid;
//   const TopWidgetportfolio({
//     super.key,
//     required this.emailid,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 15),
//       child: Column(
//         children: [
//           Container(
//             height: 150,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: primaryWhite,
//             ),
//             child: Icon(
//               Icons.account_circle_outlined,
//               color: primaryBlue,
//               size: 150,
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             "E-mail",
//             style: TextStyle(
//               color: primaryBlue,
//               fontSize: 20,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//           Text(
//             emailid,
//             style: TextStyle(
//               color: primaryBlue,
//               fontSize: 16,
//               fontWeight: FontWeight.w400,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

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
    return Column(
      children: [
        // Profile avatar container with better shadow and styling
        Container(
          height: 140,
          width: 140,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: primaryBlue.withOpacity(0.15),
                spreadRadius: 1,
                blurRadius: 20,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Main avatar icon with gradient effect
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      primaryBlue.withOpacity(0.05),
                      primaryBlue.withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              // Modern user icon
              Icon(
                Icons.person_rounded,
                color: primaryBlue,
                size: 80,
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        // Email label with improved typography
        Text(
          "Email Address",
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.3,
          ),
        ),

        const SizedBox(height: 6),

        // Email with icon for better visual representation
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.email_outlined,
              size: 16,
              color: primaryBlue,
            ),
            const SizedBox(width: 8),
            Text(
              emailid,
              style: TextStyle(
                color: primaryBlue,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
