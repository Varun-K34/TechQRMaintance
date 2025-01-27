import 'package:flutter/material.dart';

// Animation route
Route createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionDuration: const Duration(milliseconds: 500),
    reverseTransitionDuration: const Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const curveOut = Curves.easeOut; // Smooth animation curve
      const curveIn = Curves.easeIn; // Smooth animation curve

      // Define the fade animation
      var slideTween1 = Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(1.0, 0.0),
      ).chain(CurveTween(curve: curveIn));
      var slideAnimation1 = animation.drive(slideTween1);

      // Define the slide animation for exit
      var slideTween = Tween<Offset>(
        begin: Offset.zero,
        end: const Offset(1.0, 0.0),
      ).chain(CurveTween(curve: curveOut));
      var slideAnimation = secondaryAnimation.drive(slideTween);

      return SlideTransition(
        position: slideAnimation1,
        child: SlideTransition(
          position: slideAnimation,
          child: child,
        ),
      );
    },
  );
}
