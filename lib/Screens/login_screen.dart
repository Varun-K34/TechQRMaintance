import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: 428,
              height: 280,
              decoration: BoxDecoration(
                  color: Color(0xFF165069), // Hexadecimal color code
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                        80), // Adjust this value to match the corner curve
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/loginimage.png'))),
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextField(hintText: 'Email'),
            SizedBox(
              height: 20,
            ),
            CustomTextField(hintText: 'Password'),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text('Forgot password?')],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            CustomMaterialButton(
              text: 'Login',
              onPressed: () {},
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Dont have an account ? '),
                GestureDetector(child: Text('Signup')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
