import 'package:flutter/material.dart';
import 'package:techqrmaintance/core/colors.dart';

class CustomSnackbar {
  static void shows(
    BuildContext context, {
    required String message,
    Color? backgroundColor,
    Color textColor = primaryWhite,
    Duration duration = const Duration(seconds: 3),
    IconData? icon,
  }) {
    backgroundColor ??= primaryTransparent.withAlpha(200);

    final snackBar = SnackBar(
      backgroundColor: primaryTransparent,
      elevation: 0,
      duration: duration,
      content: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: primaryTransparent,
              blurRadius: 10,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null)
              Icon(
                icon,
                color: textColor,
              ),
            if (icon != null) const SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: TextStyle(color: textColor, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
