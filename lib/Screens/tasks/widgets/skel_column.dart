import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/skelton.dart';

class ColumnSkel extends StatelessWidget {
  const ColumnSkel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowSkel(),
        SizedBox(
          height: 25,
        ),
        RowSkel(),
        SizedBox(
          height: 25,
        ),
        RowSkel(),
        SizedBox(
          height: 25,
        ),
        RowSkel(),
        SizedBox(
          height: 25,
        ),
        RowSkel(),
        SizedBox(
          height: 25,
        ),
        RowSkel(),
        SizedBox(
          height: 25,
        ),
        RowSkel(),
        SizedBox(
          height: 25,
        ),
        RowSkel(),
      ],
    );
  }
}

class RowSkel extends StatelessWidget {
  const RowSkel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Skeleton(
          height: 25,
          width: 150,
          color: Color(0xfff2f2f2),
        ),
        Skeleton(
          height: 25,
          width: 150,
          color: Color(0xfff2f2f2),
        ),
      ],
    );
  }
}
