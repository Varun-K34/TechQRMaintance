import 'package:flutter/material.dart';

Route createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionDuration: const Duration(milliseconds: 500),
    reverseTransitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const curve = Curves.easeInOut;

      // Define the slide-in animation
      var slideTween = Tween<Offset>(
        begin: const Offset(1.0, 0.0), // Slide in from the right
        end: Offset.zero, // End at the current position
      ).chain(CurveTween(curve: curve));

      var slideAnimation = animation.drive(slideTween);

      return SlideTransition(
        position: slideAnimation,
        child: child,
      );
    },
  );
}
