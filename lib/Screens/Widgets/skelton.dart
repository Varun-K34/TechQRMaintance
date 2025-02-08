import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({super.key, this.height, this.width, this.color});

  final double? height, width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: color ?? Colors.grey.shade400,
        highlightColor: Colors.grey.shade400,
        child: Container(
          height: height,
          width: width,
          padding: const EdgeInsets.all(16.0 / 2),
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(
              Radius.circular(
                8.0,
              ),
            ),
          ),
        ));
  }
}

class CircleSkeleton extends StatelessWidget {
  const CircleSkeleton({super.key, this.size = 24});

  final double? size;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade400,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withAlpha(
                200,
              ),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
