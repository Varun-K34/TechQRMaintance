import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/widgets/hint_and_textfield.dart';
import 'package:techqrmaintance/application/deviceregbloc/deviceregbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:techqrmaintance/domain/deviceregmodel/device_reg_model/device_reg_model.dart';

class DeviceRegFormScreen extends StatelessWidget {
  final TextEditingController brandController = TextEditingController();
  final TextEditingController serialController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController regByController = TextEditingController();
  final TextEditingController locController = TextEditingController();
  final TextEditingController expiryController = TextEditingController();
  final TextEditingController regDateController = TextEditingController();
  final TextEditingController invoiceController = TextEditingController();
  DeviceRegFormScreen({
    super.key,
    this.id,
  });

  final int? id;

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
                textController: serialController,
                hintText: "Enter Serial No",
                labelText: "Serial No.",
                containerLen: 60,
                curve: 30,
                valEdit: false,
              ),
              HintAndTextFieldWidget(
                textController: regByController,
                hintText: "$id",
                labelText: "Registered By",
                containerLen: 60,
                curve: 30,
                valEdit: true,
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
              SizedBox(
                height: 10,
              ),
              // CustomButton
              BlocConsumer<DeviceregblocBloc, DeviceregblocState>(
                listener: (context, state) {
                  if (state.isFailure) {
                    CustomSnackbar.shows(
                      context,
                      message: "Device registration failed. Please try again.",
                    );
                  } else if (state.text.isNotEmpty) {
                    CustomSnackbar.shows(
                      context,
                      message: state.text,
                    );
                  }
                },
                builder: (context, state) {
                  return state.isLoading
                      ? CircularProgressIndicator(
                          strokeWidth: 2,
                        )
                      : CustomMaterialButton(
                          text: "REGISTER",
                          onPressed: () => onPressedButton(context, id),
                        );
                },
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
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
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

  void onPressedButton(BuildContext buttoncontext, int? id) {
    final String brand = brandController.text.trim();
    final String model = modelController.text.trim();
    final String serial = serialController.text.trim();
    final int? regBy = id;
    final String loc = locController.text.trim();
    final String wExpiry = expiryController.text.trim();
    final String regDate = regDateController.text.trim();
    final String invoceDetails = invoiceController.text.trim();

    if (brand.isEmpty ||
        model.isEmpty ||
        serial.isEmpty ||
        regBy == null ||
        loc.isEmpty ||
        wExpiry.isEmpty ||
        regDate.isEmpty ||
        invoceDetails.isEmpty) {
      CustomSnackbar.shows(
        buttoncontext,
        message: "Please fill in all the fields.",
      );
      return;
    }

    final DeviceRegModel regModel = DeviceRegModel(
      brand: brand,
      model: model,
      serialNo: serial,
      registeredBy: regBy,
      location: loc,
      warrantyExpiry: wExpiry,
      registeredAt: regDate,
      invoiceDetails: invoceDetails,
    );

    buttoncontext.read<DeviceregblocBloc>().add(DeviceregblocEvent.regDevice(
          model: regModel,
        ));
  }
}
