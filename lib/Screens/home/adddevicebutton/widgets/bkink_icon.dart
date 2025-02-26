import 'package:flutter/material.dart';

class BlinkingLocationIcon extends StatelessWidget {
  const BlinkingLocationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 1.0, end: 0.3),
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      onEnd: () {
        Future.delayed(Duration(milliseconds: 100), () {
          (context as Element).markNeedsBuild(); // Restart animation
        });
      },
      child: Icon(
        Icons.my_location_outlined,
      ),
    );
  }
}
