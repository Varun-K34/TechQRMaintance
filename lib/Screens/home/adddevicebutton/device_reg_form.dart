import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/widgets/hint_and_textfield.dart';
import 'package:techqrmaintance/core/colors.dart';

class DeviceRegFormScreen extends StatelessWidget {
  final TextEditingController brandController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController regByController = TextEditingController();
  final TextEditingController locController = TextEditingController();
  final TextEditingController expiryController = TextEditingController();
  final TextEditingController regDateController = TextEditingController();
  final TextEditingController invoiceController = TextEditingController();
  DeviceRegFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Device Registration",
          style: TextStyle(
              color: primaryBlue, fontSize: 22, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: primaryWhite,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HintAndTextFieldWidget(
                textController: brandController,
                hintText: "Enter Brand",
                labelText: "Brand",
                containerLen: 60,
                curve: 30,
                valEdit: false,
              ),
              HintAndTextFieldWidget(
                textController: modelController,
                hintText: "Enter Model No.",
                labelText: "Model No.",
                containerLen: 60,
                curve: 30,
                valEdit: false,
              ),
              HintAndTextFieldWidget(
                textController: regByController,
                hintText: "Enter Registered User",
                labelText: "Registered By",
                containerLen: 60,
                curve: 30,
                valEdit: false,
              ),
              HintAndTextFieldWidget(
                textController: locController,
                hintText: "Enter Location",
                labelText: "Location",
                containerLen: 60,
                curve: 30,
                valEdit: false,
              ),
              HintAndTextFieldWidget(
                textController: expiryController,
                hintText: "Enter Expiry Date",
                labelText: "Warranty Expiry",
                containerLen: 60,
                curve: 30,
                valEdit: true,
                suffix: IconButton(
                  onPressed: () => onPressedSuffixExpiry(context),
                  icon: Icon(Icons.date_range_outlined),
                ),
              ),
              HintAndTextFieldWidget(
                textController: regDateController,
                hintText: "Enter Register Date",
                labelText: "Registered Date",
                containerLen: 60,
                curve: 30,
                valEdit: true,
                suffix: IconButton(
                  onPressed: () => onPressedSuffixReg(context),
                  icon: Icon(Icons.date_range_outlined),
                ),
              ),
              HintAndTextFieldWidget(
                textController: invoiceController,
                maxLine: 5,
                hintText: "Enter Invoice Details",
                labelText: "Invoice Details",
                containerLen: 150,
                curve: 20,
                valEdit: false,
              ),

              // CustomButton
              CustomMaterialButton(
                text: "REGISTER",
                onPressed: onPressedButton,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onPressedSuffixExpiry(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 30)),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
      expiryController.text =
          "${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
    }
  }

  void onPressedSuffixReg(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 30)),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      final DateTime now = DateTime.now();

      // Format the current time in "HH:mm:ss"
      String formattedTime = "${now.hour.toString().padLeft(2, '0')}:"
          "${now.minute.toString().padLeft(2, '0')}:"
          "${now.second.toString().padLeft(2, '0')}";

      // Combine date and time into one DateTime
      final DateTime fullDateTime = DateTime(
        pickedDate.year,
        pickedDate.month,
        pickedDate.day,
        now.hour,
        now.minute,
        now.second,
      );

      // Format full date and time in "yyyy-MM-dd HH:mm:ss"
      String formattedDateTime =
          "${fullDateTime.year}-${fullDateTime.month.toString().padLeft(2, '0')}-"
          "${fullDateTime.day.toString().padLeft(2, '0')} "
          "$formattedTime";

      regDateController.text = formattedDateTime;
    }
  }

  void onPressedButton() {
  }
}
