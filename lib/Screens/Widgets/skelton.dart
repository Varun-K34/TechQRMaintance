import 'package:flutter/material.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({super.key, this.height, this.width});

  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(16.0 / 2),
      decoration: BoxDecoration(
          color: Colors.black.withAlpha(400),
          borderRadius:
              const BorderRadius.all(Radius.circular(16.0))),
    );
  }
}

class CircleSkeleton extends StatelessWidget {
  const CircleSkeleton({super.key, this.size = 24});

  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withAlpha(200),
        shape: BoxShape.circle,
      ),
    );
  }
}
