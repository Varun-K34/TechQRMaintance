import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: Color(0xff165069),
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 20,
          ),
          CustomTextField(hintText: "username"),
          CustomTextField(hintText: "email"),
          CustomTextField(hintText: "phone"),
          CustomTextField(hintText: "password"),
          CustomTextField(hintText: "confirm password"),
          CustomMaterialButton(
            text: "Sign Up",
            onPressed: () {},
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
