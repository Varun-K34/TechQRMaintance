import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/skelton.dart';

class SkeltonHome extends StatelessWidget {
  const SkeltonHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Skeleton(
              color: Color(0xffe0f2f5),
              height: 22,
              width: 120,
            ),
            Skeleton(
              color: Color(0xffe0f2f5),
              height: 22,
              width: 40,
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Skeleton(
              color: Color(0xffe0f2f5),
              height: 22,
              width: 150,
            ),
            Skeleton(
              color: Color(0xffe0f2f5),
              height: 22,
              width: 40,
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Skeleton(
              color: Color(0xffe0f2f5),
              height: 22,
              width: 180,
            ),
            Skeleton(
              color: Color(0xffe0f2f5),
              height: 22,
              width: 40,
            ),
          ],
        )
      ],
    );
  }
}
