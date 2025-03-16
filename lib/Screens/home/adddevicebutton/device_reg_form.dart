import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/drop_down_widget.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/widgets/bkink_icon.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/widgets/hint_and_textfield.dart';
import 'package:techqrmaintance/Screens/home/home.dart';
import 'package:techqrmaintance/application/GetLocation/get_location_bloc.dart';
import 'package:techqrmaintance/application/catagorybloc/catogory_bloc.dart';
import 'package:techqrmaintance/application/deviceregbloc/deviceregbloc_bloc.dart';
import 'package:techqrmaintance/application/requestscanqrbloc/request_scan_qr_endpoind_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:techqrmaintance/domain/deviceregmodel/devices_reg_model_saas/device_model_saas.dart';

class DeviceRegFormScreen extends StatelessWidget {
  final TextEditingController qrcontroller = TextEditingController();
  final TextEditingController catagoryController = TextEditingController();
  final TextEditingController orgController = TextEditingController();
  final TextEditingController brandController = TextEditingController();
  final TextEditingController serialController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController regByController = TextEditingController();
  final TextEditingController locController = TextEditingController();
  final TextEditingController expiryController = TextEditingController();
  final TextEditingController installationController = TextEditingController();
  final TextEditingController freeMaintenanceController =
      TextEditingController();
  DeviceRegFormScreen({
    super.key,
    this.id,
    this.updateid,
  });
  final String? updateid;
  final int? id;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<CatogoryBloc>().add(CatogoryEvent.getCatogory());
        context
            .read<RequestScanQrEndpoindBloc>()
            .add(RequestScanQrEndpoindEvent.getQrdata(id: updateid ?? ""));
      },
    );
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
          child: BlocBuilder<RequestScanQrEndpoindBloc,
              RequestScanQrEndpoindState>(
            builder: (context, state) {
              try {
                qrcontroller.text = state.qrData.id.toString();
                orgController.text = state.qrData.orgId.toString();
                log("${qrcontroller.text} ${orgController.text}",
                    name: "check");
              } catch (e) {
                log(e.toString(), name: "excption for qr and org");
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocBuilder<CatogoryBloc, CatogoryState>(
                    builder: (context, state) {
                      // if (state.isFailure) {
                      //   CustomSnackbar.shows(context,
                      //       message: "can't fatch catagory");
                      // }
                      return DropDownSearchWidget(
                        states: state.complaints.data
                                ?.map(
                                  (catName) => "${catName.id}${catName.name}",
                                )
                                .toList() ??
                            [],
                        controller: catagoryController,
                        dropdownLabel: "catagory",
                        scarchLabel: "Search Catagory",
                        key: Key("catagory"),
                      );
                    },
                  ),

                  HintAndTextFieldWidget(
                    hintText: orgController.text,
                    containerLen: 60,
                    labelText: "organization",
                    curve: 30,
                    valEdit: true,
                  ),
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
                      hintText: qrcontroller.text,
                      labelText: "Qr Code",
                      curve: 30,
                      containerLen: 60,
                      valEdit: true),
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
                      valEdit: true,
                      suffix: BlocConsumer<GetLocationBloc, GetLocationState>(
                        listener: (context, state) {
                          if (state.isFailure) {
                            CustomSnackbar.shows(
                              context,
                              message:
                                  "Failed to get location. Please try again.",
                            );
                          } else if (state.location.isNotEmpty) {
                            final String latitude = state.location[0];
                            final String longitude = state.location[1];
                            locController.text =
                                "https://www.google.com/maps/search/?api=1&query=$latitude,$longitude";
                          }
                        },
                        builder: (context, state) {
                          return state.isLoading
                              ? BlinkingLocationIcon()
                              : InkWell(
                                  onTap: () => onPressedLoc(context),
                                  child: Icon(Icons.my_location_outlined));
                        },
                      )),
                  HintAndTextFieldWidget(
                    textController: expiryController,
                    hintText: "Enter Warranty months",
                    labelText: "Warranty Period",
                    containerLen: 60,
                    curve: 30,
                    valEdit: false,
                  ),
                  HintAndTextFieldWidget(
                    textController: installationController,
                    hintText: "Enter Installation Date",
                    labelText: "Installation Date",
                    containerLen: 60,
                    curve: 30,
                    valEdit: true,
                    suffix: IconButton(
                      onPressed: () => onPressedSuffixReg(context),
                      icon: Icon(Icons.date_range_outlined),
                    ),
                  ),
                  HintAndTextFieldWidget(
                    textController: freeMaintenanceController,
                    maxLine: 5,
                    hintText: "Free Maintenance months",
                    labelText: "Free Maintenance",
                    containerLen: 60,
                    curve: 30,
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
                          message:
                              "Device registration failed. Please try again.",
                        );
                      } else if (state.text.isNotEmpty) {
                        CustomSnackbar.shows(
                          context,
                          message: state.text,
                        );
                        Navigator.of(context).pop();
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
              );
            },
          ),
        ),
      ),
    );
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

      installationController.text = formattedDateTime;
    }
  }

  void onPressedButton(BuildContext buttoncontext, int? id) {
    final String brand = brandController.text.trim();
    final String model = modelController.text.trim();
    final String serial = serialController.text.trim();
    final int? regBy = id;
    final String loc = locController.text.trim();
    final String wExpiry = expiryController.text.trim();
    final String installationdate = installationController.text.trim();
    final String freemaintenance = freeMaintenanceController.text.trim();

    if (brand.isEmpty) {
      CustomSnackbar.shows(
        buttoncontext,
        message: "Please enter the brand.",
      );
      return;
    }

    if (model.isEmpty) {
      CustomSnackbar.shows(
        buttoncontext,
        message: "Please enter the model.",
      );
      return;
    }

    if (serial.isEmpty) {
      CustomSnackbar.shows(
        buttoncontext,
        message: "Please enter the serial number.",
      );
      return;
    }

    if (regBy == null) {
      CustomSnackbar.shows(
        buttoncontext,
        message: "Registered By is missing.",
      );
      return;
    }

    if (loc.isEmpty) {
      CustomSnackbar.shows(
        buttoncontext,
        message: "Please enter the location.",
      );
      return;
    }

    if (wExpiry.isEmpty) {
      CustomSnackbar.shows(
        buttoncontext,
        message: "Please enter the warranty period.",
      );
      return;
    }

    if (installationdate.isEmpty) {
      CustomSnackbar.shows(
        buttoncontext,
        message: "Please enter the installation date.",
      );
      return;
    }

    if (freemaintenance.isEmpty) {
      CustomSnackbar.shows(
        buttoncontext,
        message: "Please enter the free maintenance period.",
      );
      return;
    }

    if (catagoryController.text.isEmpty) {
      CustomSnackbar.shows(
        buttoncontext,
        message: "Please select a category.",
      );
      return;
    }

    if (orgController.text.isEmpty) {
      CustomSnackbar.shows(
        buttoncontext,
        message: "Organization ID is missing.",
      );
      return;
    }

    if (qrcontroller.text.isEmpty) {
      CustomSnackbar.shows(
        buttoncontext,
        message: "QR code is missing.",
      );
      return;
    }

    final DeviceModelSaas regModel = DeviceModelSaas.create(
      brand: brand,
      model: model,
      orgId: int.parse(orgController.text),
      qrId: qrcontroller.text,
      serialNumber: serial,
      installationDate: installationdate,
      warrantyPeriod: int.parse(wExpiry),
      freeMaintenance: int.parse(freemaintenance),
      locationDetails: locController.text,
      categoryId: catagoryController.text,
      customerId: regBy,
    );
    log("regModel: $regModel");
    buttoncontext.read<DeviceregblocBloc>().add(DeviceregblocEvent.regDevice(
          model: regModel,
        ));
  }

  void onPressedLoc(BuildContext ctx2) async {
    String? message = await _getCurrentLocation();

    if (message != null && ctx2.mounted) {
      CustomSnackbar.shows(ctx2, message: message);
    }

    if (ctx2.mounted) {
      ctx2.read<GetLocationBloc>().add(Getloc());
    }
  }

  Future<String?> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return "Location services are disabled. Please enable it.";
    }

    // Check for location permissions
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return "Location permissions are denied.";
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return "Location permissions are permanently denied, we cannot request permissions.";
    }

    return null; // No issues, location access granted
  }
}
