import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
import 'package:techqrmaintance/core/colors.dart';

class HintAndTextFieldWidget extends StatelessWidget {
  final String hintText;
  final String labelText;
  final int? maxLine;
  final double? containerLen;
  final double curve;
  final Widget? suffix;
  final bool valEdit;
  final TextEditingController? textController;

  const HintAndTextFieldWidget({
    super.key,
    required this.hintText,
    required this.labelText,
    this.maxLine,
    this.containerLen,
    required this.curve,
    this.suffix,
    required this.valEdit,
    this.textController,
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
                color: primaryBlue, fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        CustomTextField(
          hintText: hintText,
          maxLine: maxLine,
          containerLength: containerLen,
          curveRadius: curve,
          sufficChild: suffix,
          boolVal: valEdit,
          controller: textController,
        ),
      ],
    );
  }
}
