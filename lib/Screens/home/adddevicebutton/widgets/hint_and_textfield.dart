import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';

class HintAndTextFieldWidget extends StatelessWidget {
  final String hintText;
  final String labelText;
  const HintAndTextFieldWidget({
    super.key,
    required this.hintText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            labelText,
            style: TextStyle(
                color: Color(0xff165069),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ),
        CustomTextField(hintText: hintText),
      ],
    );
  }
}
