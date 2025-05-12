// import 'dart:developer';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
// import 'package:techqrmaintance/Screens/Widgets/drop_down_widget.dart';
// import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
// import 'package:techqrmaintance/Screens/home/adddevicebutton/upload_pdf_screen.dart';
// import 'package:techqrmaintance/Screens/home/adddevicebutton/widgets/bkink_icon.dart';
// import 'package:techqrmaintance/Screens/home/adddevicebutton/widgets/hint_and_textfield.dart';
// import 'package:techqrmaintance/application/GetLocation/get_location_bloc.dart';
// import 'package:techqrmaintance/application/brandnadmodel/brand_and_model_bloc.dart';
// import 'package:techqrmaintance/application/catagorybloc/catogory_bloc.dart';
// import 'package:techqrmaintance/application/deviceregbloc/deviceregbloc_bloc.dart';
// import 'package:techqrmaintance/application/modelandbrand/model_and_brand_bloc.dart';
// import 'package:techqrmaintance/application/requestscanqrbloc/request_scan_qr_endpoind_bloc.dart';
// import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
// import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
// import 'package:techqrmaintance/core/colors.dart';
// import 'package:techqrmaintance/domain/deviceregmodel/devices_reg_model_saas/device_model_saas.dart';

// class DeviceRegFormScreen extends StatelessWidget {
//   final TextEditingController qrcontroller = TextEditingController();
//   final TextEditingController catagoryController = TextEditingController();
//   final TextEditingController orgController = TextEditingController();
//   final TextEditingController brandController = TextEditingController();
//   final TextEditingController serialController = TextEditingController();
//   final TextEditingController modelController = TextEditingController();
//   final TextEditingController regByController = TextEditingController();
//   final TextEditingController locController = TextEditingController();
//   final TextEditingController expiryController = TextEditingController();
//   final TextEditingController floorController = TextEditingController();
//   final TextEditingController roomController = TextEditingController();
//   final TextEditingController installationController = TextEditingController();
//   final TextEditingController freeMaintenanceController =
//       TextEditingController();
//   DeviceRegFormScreen({
//     super.key,
//     this.id,
//     this.updateid,
//   });
//   final String? updateid;
//   final int? id;

//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance.addPostFrameCallback(
//       (_) {
//         final spState = context.read<SpblocBloc>().state;
//         context.read<CatogoryBloc>().add(CatogoryEvent.getCatogory());
//         context
//             .read<RequestScanQrEndpoindBloc>()
//             .add(RequestScanQrEndpoindEvent.getQrdata(id: updateid ?? ""));
//         context.read<ModelAndBrandBloc>().add(ModelAndBrandEvent.getModel());
//         context.read<BrandAndModelBloc>().add(BrandAndModelEvent.getBrand());

//         if (spState.userData != null) {
//           context.read<SingleUserBloc>().add(
//                 SingleUserEvent.singleUser(id: spState.userData.toString()),
//               );
//         } else {
//           /// Wait for SpblocBloc to emit loaded state
//           context
//               .read<SpblocBloc>()
//               .stream
//               .firstWhere((spState) => spState.userData != null)
//               .then((spState) {
//             // ignore: use_build_context_synchronously
//             context.read<SingleUserBloc>().add(
//                   SingleUserEvent.singleUser(id: spState.userData.toString()),
//                 );
//           }).catchError((error) {
//             log("Error waiting for SpblocBloc state: $error");
//           });
//         }
//       },
//     );
//     return Scaffold(
//       backgroundColor: Color(0xfff5f5f5),
//       appBar: AppBar(
//         title: Text(
//           "Device Registration",
//           style: TextStyle(
//               color: primaryBlue, fontSize: 22, fontWeight: FontWeight.w600),
//         ),
//         centerTitle: true,
//         backgroundColor: Color(0xfff5f5f5),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 30),
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: BlocBuilder<RequestScanQrEndpoindBloc,
//               RequestScanQrEndpoindState>(
//             builder: (context, state) {
//               try {
//                 log("${state.qrData.id}");
//                 log("${state.qrData.orgId}");
//                 qrcontroller.text = state.qrData.id.toString();
//                 orgController.text = state.qrData.orgId.toString();
//                 log("${qrcontroller.text} ${orgController.text}",
//                     name: "check");
//               } catch (e) {
//                 log(e.toString(), name: "excption for qr and org");
//               }
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   BlocBuilder<SingleUserBloc, SingleUserState>(
//                       builder: (context, userState) {
//                     final userOrgId = userState.user.orgId;
//                     return BlocBuilder<CatogoryBloc, CatogoryState>(
//                       builder: (context, state) {
//                         // if (state.isFailure) {
//                         //   CustomSnackbar.shows(context,
//                         //       message: "can't fatch catagory");
//                         // }
//                         log("User org id: $userOrgId");
//                         final filteredCategories = state.complaints.data
//                                 ?.where((cat) => cat.orgId == userOrgId)
//                                 .map((cat) => "${cat.id} ${cat.name}")
//                                 .toList() ??
//                             [];
//                         return DropDownSearchWidget(
//                           iconprefix: Icons.category,
//                           states: filteredCategories,
//                           controller: catagoryController,
//                           dropdownLabel: "Category",
//                           scarchLabel: "Search Category",
//                           key: Key("category"),
//                         );
//                       },
//                     );
//                   }),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   BlocBuilder<SingleUserBloc, SingleUserState>(
//                       builder: (context, userState) {
//                     final userOrgId = userState.user.orgId;
//                     return BlocBuilder<BrandAndModelBloc, BrandAndModelState>(
//                       builder: (context, state) {
//                         final filteredBrands = state.brandList
//                             .where((brand) => brand.orgId == userOrgId)
//                             .map((brand) => "${brand.id} ${brand.name}")
//                             .toList();
//                         return DropDownSearchWidget(
//                           iconprefix: Icons.devices,
//                           dropdownLabel: "Brand",
//                           scarchLabel: "Search Brand",
//                           key: Key("brand"),
//                           controller: brandController,
//                           states: filteredBrands,
//                         );
//                       },
//                     );
//                   }),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   BlocBuilder<SingleUserBloc, SingleUserState>(
//                       builder: (context, userState) {
//                     final userOrgId = userState.user.orgId;
//                     return BlocBuilder<ModelAndBrandBloc, ModelAndBrandState>(
//                       builder: (context, state) {
//                         final filteredModels = state.modelList
//                             .where((model) => model.orgId == userOrgId)
//                             .map((model) => "${model.id} ${model.name}")
//                             .toList();
//                         return DropDownSearchWidget(
//                           iconprefix: Icons.devices,
//                           dropdownLabel: "Model",
//                           scarchLabel: "Search Model",
//                           key: Key("model"),
//                           controller: modelController,
//                           states: filteredModels,
//                         );
//                       },
//                     );
//                   }),

//                   HintAndTextFieldWidget(
//                     hintText: orgController.text,
//                     containerLen: 60,
//                     labelText: "organization",
//                     curve: 20,
//                     valEdit: true,
//                   ),

//                   HintAndTextFieldWidget(
//                     textController: serialController,
//                     hintText: "Enter Serial No",
//                     labelText: "Serial No.",
//                     containerLen: 60,
//                     curve: 20,
//                     valEdit: false,
//                   ),
//                   HintAndTextFieldWidget(
//                       hintText: qrcontroller.text,
//                       labelText: "Qr Code",
//                       curve: 20,
//                       containerLen: 60,
//                       valEdit: true),
//                   HintAndTextFieldWidget(
//                     textController: regByController,
//                     hintText: "$id",
//                     labelText: "Registered By",
//                     containerLen: 60,
//                     curve: 20,
//                     valEdit: true,
//                   ),

//                   HintAndTextFieldWidget(
//                       textController: locController,
//                       hintText: "Enter Location",
//                       labelText: "Location",
//                       containerLen: 60,
//                       curve: 20,
//                       valEdit: true,
//                       suffix: BlocConsumer<GetLocationBloc, GetLocationState>(
//                         listener: (context, state) {
//                           if (state.isFailure) {
//                             CustomSnackbar.shows(
//                               context,
//                               message:
//                                   "Failed to get location. Please try again.",
//                             );
//                           } else if (state.location.isNotEmpty) {
//                             final String latitude = state.location[0];
//                             final String longitude = state.location[1];
//                             locController.text =
//                                 "https://www.google.com/maps/search/?api=1&query=$latitude,$longitude";
//                           }
//                         },
//                         builder: (context, state) {
//                           return state.isLoading
//                               ? BlinkingLocationIcon()
//                               : InkWell(
//                                   onTap: () => onPressedLoc(context),
//                                   child: Icon(Icons.my_location_outlined));
//                         },
//                       )),
//                   HintAndTextFieldWidget(
//                     textController: expiryController,
//                     hintText: "Enter Warranty months",
//                     labelText: "Warranty Period",
//                     containerLen: 60,
//                     curve: 20,
//                     valEdit: false,
//                   ),
//                   HintAndTextFieldWidget(
//                     textController: installationController,
//                     hintText: "Enter Installation Date",
//                     labelText: "Installation Date",
//                     containerLen: 60,
//                     curve: 20,
//                     valEdit: true,
//                     suffix: IconButton(
//                       onPressed: () => onPressedSuffixReg(context),
//                       icon: Icon(Icons.date_range_outlined),
//                     ),
//                   ),
//                   HintAndTextFieldWidget(
//                     textController: freeMaintenanceController,
//                     maxLine: 5,
//                     hintText: "Free Maintenance months",
//                     labelText: "Free Maintenance",
//                     containerLen: 60,
//                     curve: 20,
//                     valEdit: false,
//                   ),
//                   HintAndTextFieldWidget(
//                     textController: floorController,
//                     hintText: "Enter Floor",
//                     labelText: "Floor",
//                     containerLen: 60,
//                     curve: 20,
//                     valEdit: false,
//                   ),

//                   HintAndTextFieldWidget(
//                     textController: roomController,
//                     hintText: "Enter Room",
//                     labelText: "Room",
//                     containerLen: 60,
//                     curve: 20,
//                     valEdit: false,
//                   ),

//                   SizedBox(
//                     height: 10,
//                   ),

//                   // CustomButton
//                   BlocConsumer<DeviceregblocBloc, DeviceregblocState>(
//                     listener: (context, state) {
//                       if (state.isFailure) {
//                         CustomSnackbar.shows(
//                           context,
//                           message:
//                               "Device registration failed. Please try again.",
//                         );
//                       } else if (state.text.isNotEmpty) {
//                         final id = state.text;
//                         Navigator.of(context).pushReplacement(MaterialPageRoute(
//                           builder: (context) => UploadPdfScreen(
//                             id: id,
//                             orgid: orgController.text,
//                           ),
//                         ));
//                       }
//                     },
//                     builder: (context, state) {
//                       return state.isLoading
//                           ? CircularProgressIndicator(
//                               strokeWidth: 2,
//                             )
//                           : CustomMaterialButton(
//                               text: "REGISTER",
//                               onPressed: () => onPressedButton(
//                                 context,
//                                 id,
//                               ),
//                             );
//                     },
//                   ),
//                 ],
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   void onPressedSuffixReg(BuildContext context) async {
//     DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime.now().subtract(const Duration(days: 30)),
//       lastDate: DateTime.now(),
//     );

//     if (pickedDate != null) {
//       final DateTime now = DateTime.now();

//       // Format the current time in "HH:mm:ss"
//       String formattedTime = "${now.hour.toString().padLeft(2, '0')}:"
//           "${now.minute.toString().padLeft(2, '0')}:"
//           "${now.second.toString().padLeft(2, '0')}";

//       // Combine date and time into one DateTime
//       final DateTime fullDateTime = DateTime(
//         pickedDate.year,
//         pickedDate.month,
//         pickedDate.day,
//         now.hour,
//         now.minute,
//         now.second,
//       );

//       // Format full date and time in "yyyy-MM-dd HH:mm:ss"
//       String formattedDateTime =
//           "${fullDateTime.year}-${fullDateTime.month.toString().padLeft(2, '0')}-"
//           "${fullDateTime.day.toString().padLeft(2, '0')} "
//           "$formattedTime";

//       installationController.text = formattedDateTime;
//     }
//   }

//   void onPressedButton(
//     BuildContext buttoncontext,
//     int? id,
//   ) {
//     final String brand = brandController.text.trim();
//     final String model = modelController.text.trim();
//     final String serial = serialController.text.trim();
//     final int? regBy = id;
//     final String loc = locController.text.trim();
//     final String wExpiry = expiryController.text.trim();
//     final String installationdate = installationController.text.trim();
//     final String freemaintenance = freeMaintenanceController.text.trim();
//     final String floor = floorController.text.trim();

//     if (brand.isEmpty) {
//       CustomSnackbar.shows(
//         buttoncontext,
//         message: "Please enter the brand.",
//       );
//       return;
//     }

//     if (model.isEmpty) {
//       CustomSnackbar.shows(
//         buttoncontext,
//         message: "Please enter the model.",
//       );
//       return;
//     }

//     if (serial.isEmpty) {
//       CustomSnackbar.shows(
//         buttoncontext,
//         message: "Please enter the serial number.",
//       );
//       return;
//     }

//     if (regBy == null) {
//       CustomSnackbar.shows(
//         buttoncontext,
//         message: "Registered By is missing.",
//       );
//       return;
//     }

//     if (loc.isEmpty) {
//       CustomSnackbar.shows(
//         buttoncontext,
//         message: "Please enter the location.",
//       );
//       return;
//     }

//     if (wExpiry.isEmpty) {
//       CustomSnackbar.shows(
//         buttoncontext,
//         message: "Please enter the warranty period.",
//       );
//       return;
//     }

//     if (installationdate.isEmpty) {
//       CustomSnackbar.shows(
//         buttoncontext,
//         message: "Please enter the installation date.",
//       );
//       return;
//     }

//     if (freemaintenance.isEmpty) {
//       CustomSnackbar.shows(
//         buttoncontext,
//         message: "Please enter the free maintenance period.",
//       );
//       return;
//     }

//     if (catagoryController.text.isEmpty) {
//       CustomSnackbar.shows(
//         buttoncontext,
//         message: "Please select a category.",
//       );
//       return;
//     }

//     if (orgController.text.isEmpty) {
//       CustomSnackbar.shows(
//         buttoncontext,
//         message: "Organization ID is missing.",
//       );
//       return;
//     }

//     if (qrcontroller.text.isEmpty) {
//       CustomSnackbar.shows(
//         buttoncontext,
//         message: "QR code is missing.",
//       );
//       return;
//     }
//     if (floor.isEmpty) {
//       CustomSnackbar.shows(
//         buttoncontext,
//         message: "Please enter the floor.",
//       );
//       return;
//     }

//     if (roomController.text.isEmpty) {
//       CustomSnackbar.shows(
//         buttoncontext,
//         message: "Please enter the room.",
//       );
//       return;
//     }

//     final DeviceModelSaas regModel = DeviceModelSaas.create(
//       brand: brand,
//       model: model,
//       orgId: int.parse(orgController.text),
//       qrId: qrcontroller.text,
//       serialNumber: serial,
//       installationDate: installationdate,
//       warrantyPeriod: int.parse(wExpiry),
//       freeMaintenance: int.parse(freemaintenance),
//       floor: int.parse(floor),
//       room: roomController.text,
//       locationDetails: locController.text,
//       categoryId: catagoryController.text,
//       customerId: regBy,
//     );
//     log("regModel: $regModel");
//     buttoncontext.read<DeviceregblocBloc>().add(DeviceregblocEvent.regDevice(
//           model: regModel,
//         ));
//   }

//   void onPressedLoc(BuildContext ctx2) async {
//     String? message = await _getCurrentLocation();

//     if (message != null && ctx2.mounted) {
//       CustomSnackbar.shows(ctx2, message: message);
//     }

//     if (ctx2.mounted) {
//       ctx2.read<GetLocationBloc>().add(Getloc());
//     }
//   }

//   Future<String?> _getCurrentLocation() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     // Check if location services are enabled
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       return "Location services are disabled. Please enable it.";
//     }

//     // Check for location permissions
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         return "Location permissions are denied.";
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       return "Location permissions are permanently denied, we cannot request permissions.";
//     }

//     return null; // No issues, location access granted
//   }
// }


import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/drop_down_widget.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/upload_pdf_screen.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/widgets/bkink_icon.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/widgets/hint_and_textfield.dart';
import 'package:techqrmaintance/application/GetLocation/get_location_bloc.dart';
import 'package:techqrmaintance/application/brandnadmodel/brand_and_model_bloc.dart';
import 'package:techqrmaintance/application/catagorybloc/catogory_bloc.dart';
import 'package:techqrmaintance/application/deviceregbloc/deviceregbloc_bloc.dart';
import 'package:techqrmaintance/application/modelandbrand/model_and_brand_bloc.dart';
import 'package:techqrmaintance/application/requestscanqrbloc/request_scan_qr_endpoind_bloc.dart';
import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
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
  final TextEditingController floorController = TextEditingController();
  final TextEditingController roomController = TextEditingController();
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
        final spState = context.read<SpblocBloc>().state;
        context.read<CatogoryBloc>().add(CatogoryEvent.getCatogory());
        context
            .read<RequestScanQrEndpoindBloc>()
            .add(RequestScanQrEndpoindEvent.getQrdata(id: updateid ?? ""));
        context.read<ModelAndBrandBloc>().add(ModelAndBrandEvent.getModel());
        context.read<BrandAndModelBloc>().add(BrandAndModelEvent.getBrand());

        if (spState.userData != null) {
          context.read<SingleUserBloc>().add(
                SingleUserEvent.singleUser(id: spState.userData.toString()),
              );
        } else {
          /// Wait for SpblocBloc to emit loaded state
          context
              .read<SpblocBloc>()
              .stream
              .firstWhere((spState) => spState.userData != null)
              .then((spState) {
            // ignore: use_build_context_synchronously
            context.read<SingleUserBloc>().add(
                  SingleUserEvent.singleUser(id: spState.userData.toString()),
                );
          }).catchError((error) {
            log("Error waiting for SpblocBloc state: $error");
          });
        }
      },
    );
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        title: Text(
          "Device Registration",
          style: TextStyle(
              color: primaryBlue, fontSize: 22, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Color(0xfff5f5f5),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: BlocBuilder<RequestScanQrEndpoindBloc,
              RequestScanQrEndpoindState>(
            builder: (context, state) {
              try {
                log("${state.qrData.id}");
                log("${state.qrData.orgId}");
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
                  BlocBuilder<SingleUserBloc, SingleUserState>(
                      builder: (context, userState) {
                    final userOrgId = userState.user.orgId;
                    return BlocBuilder<CatogoryBloc, CatogoryState>(
                      builder: (context, state) {
                        log("User org id: $userOrgId");
                        final filteredCategories = state.complaints.data
                                ?.where((cat) => cat.orgId == userOrgId)
                                .map((cat) => "${cat.id} ${cat.name}")
                                .toList() ??
                            [];
                        return DropDownSearchWidget(
                          iconprefix: Icons.category,
                          states: filteredCategories,
                          controller: catagoryController,
                          dropdownLabel: "Category",
                          scarchLabel: "Search Category",
                          key: Key("category"),
                        );
                      },
                    );
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<SingleUserBloc, SingleUserState>(
                      builder: (context, userState) {
                    final userOrgId = userState.user.orgId;
                    return BlocBuilder<BrandAndModelBloc, BrandAndModelState>(
                      builder: (context, state) {
                        final filteredBrands = state.brandList
                            .where((brand) => brand.orgId == userOrgId)
                            .map((brand) => "${brand.id} ${brand.name}")
                            .toList();
                        return DropDownSearchWidget(
                          iconprefix: Icons.devices,
                          dropdownLabel: "Brand",
                          scarchLabel: "Search Brand",
                          key: Key("brand"),
                          controller: brandController,
                          states: filteredBrands,
                        );
                      },
                    );
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<SingleUserBloc, SingleUserState>(
                      builder: (context, userState) {
                    final userOrgId = userState.user.orgId;
                    return BlocBuilder<ModelAndBrandBloc, ModelAndBrandState>(
                      builder: (context, state) {
                        final filteredModels = state.modelList
                            .where((model) => model.orgId == userOrgId)
                            .map((model) => "${model.id} ${model.name}")
                            .toList();
                        return DropDownSearchWidget(
                          iconprefix: Icons.devices,
                          dropdownLabel: "Model",
                          scarchLabel: "Search Model",
                          key: Key("model"),
                          controller: modelController,
                          states: filteredModels,
                        );
                      },
                    );
                  }),

                  // Removed Organization Field - Hidden from UI but controller still maintains value

                  HintAndTextFieldWidget(
                    textController: serialController,
                    hintText: "Enter Serial No",
                    labelText: "Serial No.",
                    containerLen: 60,
                    curve: 20,
                    valEdit: false,
                  ),
                  
                  // Removed QR Code Field - Hidden from UI but controller still maintains value
                  
                  // Removed Registered By Field - Hidden from UI but controller still maintains value
                  
                  // Set regByController text to id value to maintain data
                  BlocBuilder<SingleUserBloc, SingleUserState>(
                    builder: (context, state) {
                      regByController.text = id?.toString() ?? "";
                      return SizedBox.shrink(); // This widget doesn't display anything
                    },
                  ),

                  HintAndTextFieldWidget(
                    textController: locController,
                    hintText: "Enter Location",
                    labelText: "Location",
                    containerLen: 60,
                    curve: 20,
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
                    curve: 20,
                    valEdit: false,
                  ),
                  HintAndTextFieldWidget(
                    textController: installationController,
                    hintText: "Enter Installation Date",
                    labelText: "Installation Date",
                    containerLen: 60,
                    curve: 20,
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
                    curve: 20,
                    valEdit: false,
                  ),
                  HintAndTextFieldWidget(
                    textController: floorController,
                    hintText: "Enter Floor",
                    labelText: "Floor",
                    containerLen: 60,
                    curve: 20,
                    valEdit: false,
                  ),

                  HintAndTextFieldWidget(
                    textController: roomController,
                    hintText: "Enter Room",
                    labelText: "Room",
                    containerLen: 60,
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
                          message:
                              "Device registration failed. Please try again.",
                        );
                      } else if (state.text.isNotEmpty) {
                        final id = state.text;
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => UploadPdfScreen(
                            id: id,
                            orgid: orgController.text,
                          ),
                        ));
                      }
                    },
                    builder: (context, state) {
                      return state.isLoading
                          ? CircularProgressIndicator(
                              strokeWidth: 2,
                            )
                          : CustomMaterialButton(
                              text: "REGISTER",
                              onPressed: () => onPressedButton(
                                context,
                                id,
                              ),
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

  void onPressedButton(
    BuildContext buttoncontext,
    int? id,
  ) {
    final String brand = brandController.text.trim();
    final String model = modelController.text.trim();
    final String serial = serialController.text.trim();
    final int? regBy = id;
    final String loc = locController.text.trim();
    final String wExpiry = expiryController.text.trim();
    final String installationdate = installationController.text.trim();
    final String freemaintenance = freeMaintenanceController.text.trim();
    final String floor = floorController.text.trim();

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
    if (floor.isEmpty) {
      CustomSnackbar.shows(
        buttoncontext,
        message: "Please enter the floor.",
      );
      return;
    }

    if (roomController.text.isEmpty) {
      CustomSnackbar.shows(
        buttoncontext,
        message: "Please enter the room.",
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
      floor: int.parse(floor),
      room: roomController.text,
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