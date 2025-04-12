// import 'package:flutter/material.dart';
// import 'package:techqrmaintance/core/colors.dart';

// class CustomTextField extends StatelessWidget {
//   final String hintText;
//   final TextEditingController? controller;
//   final bool obscureText;
//   final int? maxLine;
//   final double? containerLength;
//   final double curveRadius;
//   final Widget? sufficChild;

//   final bool boolVal;

//   const CustomTextField({
//     super.key,
//     required this.hintText,
//     this.controller,
//     this.obscureText = false,
//     this.maxLine,
//     this.containerLength,
//     required this.curveRadius,
//     this.sufficChild,
//     required this.boolVal,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Container(
//         height: containerLength,
//         decoration: BoxDecoration(
//           border: Border.all(color: primaryBlue),
//           color: const Color(0xFFF5F4F4), // Background color
//           borderRadius: BorderRadius.circular(curveRadius), // Rounded corners
//         ),
//         padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
//         child: TextField(
//           controller: controller,
//           obscureText: obscureText,
//           decoration: InputDecoration(
//               hintText: hintText,
//               border: InputBorder.none, // Remove default border
//               suffixIcon: sufficChild,
//               suffixIconColor: primaryBlack),
//           style: TextStyle(color: primaryBlack), // Text style
//           maxLines: maxLine,
//           readOnly: boolVal,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:techqrmaintance/core/colors.dart';

class CustomTextField extends StatelessWidget {
  // Properties
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final int? maxLine;
  final double? containerLength;
  final double curveRadius;
  final Widget? sufficChild;
  final bool boolVal;

  // Constructor
  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.obscureText = false,
    this.maxLine,
    this.containerLength,
    required this.curveRadius,
    this.sufficChild,
    required this.boolVal,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: containerLength,
        decoration: BoxDecoration(
          border: Border.all(color: primaryBlue),
          color: const Color(0xFFF5F4F4),
          borderRadius: BorderRadius.circular(curveRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            readOnly: boolVal,
            maxLines: maxLine,
            style: const TextStyle(
              color: primaryBlack,
              fontSize: 16,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: primaryBlue,
                fontSize: 16,
              ),
              border: InputBorder.none,
              suffixIcon: sufficChild,
              suffixIconColor: primaryBlack,
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
      ),
    );
  }
}
