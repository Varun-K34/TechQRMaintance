import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/widgets/hint_and_textfield.dart';

class DeviceRegFormScreen extends StatelessWidget {
  const DeviceRegFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Device Registration",
          style: TextStyle(
              color: Color(0xff165069),
              fontSize: 22,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HintAndTextFieldWidget(
              hintText: "Enter Brand",
              labelText: "Brand",
            ),
            HintAndTextFieldWidget(
              hintText: "Enter Model No.",
              labelText: "Model No.",
            ),
            HintAndTextFieldWidget(
              hintText: "Enter device Name",
              labelText: "Device Name",
            ),
            HintAndTextFieldWidget(
              hintText: "Enter Expiry Date",
              labelText: "Warranty Expiry",
            ),
            HintAndTextFieldWidget(
              hintText: "Enter Location",
              labelText: "Location",
            ),

            // CustomButton
            CustomMaterialButton(
              text: "REGISTER",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
