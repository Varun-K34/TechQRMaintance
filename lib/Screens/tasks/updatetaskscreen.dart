// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
// import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
// import 'package:techqrmaintance/Screens/Widgets/drop_down_widget.dart';
// import 'package:techqrmaintance/Screens/Widgets/multiselectiondropdown.dart';
// import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
// import 'package:techqrmaintance/application/inventry_bloc/inventry_bloc.dart';
// import 'package:techqrmaintance/application/servicereqbyidbloc/service_req_by_id_bloc.dart';
// import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
// import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
// import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
// import 'package:techqrmaintance/application/techlistbloc/tech_list_bloc.dart';
// import 'package:techqrmaintance/application/updateservicebloc/update_service_req_bloc.dart';
// import 'package:techqrmaintance/core/colors.dart';
// import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_model.dart';

// class UpdateTaskScreen extends StatelessWidget {
//   final String id;
//   UpdateTaskScreen({
//     super.key,
//     required this.id,
//   });

//   // Controllers for the text fields
//   final TextEditingController completedDateController = TextEditingController();
//   final TextEditingController statusController = TextEditingController();
//   final TextEditingController completionNoteController =
//       TextEditingController();
//   final TextEditingController techController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     List<int>? newpart;
//     WidgetsBinding.instance.addPostFrameCallback(
//       (_) {
//         context.read<TechListBloc>().add(TechListEvent.getTechlist());
//         context.read<InventryBloc>().add(InventryEvent.getInventry());
//         context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
//         context.read<SingleUserBloc>().add(
//               SingleUserEvent.singleUser(
//                 id: context.read<SpblocBloc>().state.userData.toString(),
//               ),
//             );
//       },
//     );
//     return Scaffold(
//       backgroundColor: Color(0xfff5f5f5),
//       appBar: AppBar(
//         backgroundColor: Color(0xfff5f5f5),
//         title: BlocBuilder<SingleUserBloc, SingleUserState>(
//           builder: (context, state) {
//             return state.user.role == "Area Manager"
//                 ? Text(
//                     "Assign Task",
//                     style: TextStyle(
//                         fontSize: 16,
//                         color: primaryBlue,
//                         fontWeight: FontWeight.w700),
//                   )
//                 : Text(
//                     "Update Task",
//                     style: TextStyle(
//                         fontSize: 22,
//                         color: primaryBlue,
//                         fontWeight: FontWeight.w700),
//                   );
//           },
//         ),
//         centerTitle: true,
//       ),
//       body: BlocBuilder<SingleUserBloc, SingleUserState>(
//         builder: (context, spstate) {
//           return Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // completion date
//               spstate.user.role == "Area Manager"
//                   ? SizedBox.shrink()
//                   : CustomTextField(
//                       controller: completedDateController,
//                       hintText: "Completed Date",
//                       curveRadius: 20,
//                       boolVal: true,
//                       sufficChild: IconButton(
//                           onPressed: () => onSelectDate(context),
//                           icon: Icon(Icons.calendar_today_outlined)),
//                     ),
//               SizedBox(
//                 height: 16,
//               ),

//               spstate.user.role == "Area Manager"
//                   ? BlocBuilder<TechListBloc, TechListState>(
//                       builder: (context, state) {
//                         final List<String> technamelist = state.techlist
//                             .where((onlytech) => onlytech.role == "Technician")
//                             .map((tech) => "${tech.id} ${tech.fullName}")
//                             .toList();
//                         //select tech
//                         return DropDownSearchWidget(
//                           controller: techController,
//                           serarchbox: true,
//                           states: technamelist,
//                           key: Key("tech"),
//                           dropdownLabel: "Tecnitian",
//                           iconprefix: Icons.man_rounded,
//                         );
//                       },
//                     )
//                   // select status
//                   : DropDownSearchWidget(
//                       controller: statusController,
//                       serarchbox: false,
//                       states: ["In Progress", "Completed"],
//                       key: Key("status"),
//                       dropdownLabel: "Status",
//                       iconprefix: Icons.flag,
//                     ),
//               SizedBox(
//                 height: 16,
//               ),

//               // select inventry
//               spstate.user.role == "Area Manager"
//                   ? SizedBox.shrink()
//                   : BlocBuilder<InventryBloc, InventryState>(
//                       builder: (context, state) {
//                         final List<String> inventoryItems = state.inventry
//                             .where((item) => item.orgId == spstate.user.orgId)
//                             .map((e) => "${e.id} ${e.name}")
//                             .whereType<String>()
//                             .toList();

//                         return MultiSelectDropdown<String>(
//                           items: inventoryItems,
//                           label: "Inventory Items",
//                           selectedItems: [],
//                           onSelectionChanged: (selectedParts) {
//                             newpart = selectedParts;
//                           },
//                         );
//                       },
//                     ),
//               SizedBox(
//                 height: 16,
//               ),
//               // add completion note
//               spstate.user.role == "Area Manager"
//                   ? SizedBox.shrink()
//                   : CustomTextField(
//                       controller: completionNoteController,
//                       hintText: "Completion Note",
//                       curveRadius: 20,
//                       boolVal: false,
//                       maxLine: 5,
//                     ),
//               SizedBox(
//                 height: 16,
//               ),
//               BlocBuilder<UpdateServiceReqBloc, UpdateServiceReqState>(
//                 builder: (context, state) {
//                   if (state.isFailure) {
//                     WidgetsBinding.instance.addPostFrameCallback((_) {
//                       CustomSnackbar.shows(context,
//                           message: "Failed to update task");
//                     });
//                   } else if (state.respons.isNotEmpty) {
//                     WidgetsBinding.instance.addPostFrameCallback((_) {
//                       context.read<ServiceReqByIdBloc>().add(
//                             ServiceReqByIdEvent.getservicebyid(id: id),
//                           );
//                       context
//                           .read<ServiceRequestBloc>()
//                           .add(ServiceRequestEvent.getServicesreq());

//                       CustomSnackbar.shows(context, message: state.respons);
//                       context.read<UpdateServiceReqBloc>().add(Reset());
//                       Navigator.of(context).pop();
//                     });
//                   }
//                   return state.isLoading
//                       ? CircularProgressIndicator(
//                           strokeWidth: 2,
//                           strokeCap: StrokeCap.round,
//                         )
//                       : SizedBox(
//                           height: 55,
//                           width: 200,
//                           child: CustomMaterialButton(
//                             text: spstate.user.role == "Area Manager"
//                                 ? "Assign"
//                                 : "update",
//                             onPressed: () => spstate.user.role == "Area Manager"
//                                 ? onmanagerupdate(context)
//                                 : onUpdate(context, newpart ?? []),
//                           ),
//                         );
//                 },
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }

//   Future<void> onSelectDate(BuildContext context) async {
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

//       completedDateController.text = formattedDateTime;
//     }
//   }

//   void onUpdate(BuildContext context, List<int> newpart) {
//     String completedDate = completedDateController.text;
//     String status = statusController.text;
//     String completionNote = completionNoteController.text;

//     DateTime? completedDateTime;
//     try {
//       completedDateTime = DateTime.parse(completedDate);
//     } catch (e) {
//       CustomSnackbar.shows(context, message: "Invalid Completed Date format");
//       return;
//     }

//     if (completedDate.isEmpty) {
//       CustomSnackbar.shows(context, message: "Completed Date is empty");
//       return;
//     }

//     if (status.isEmpty) {
//       CustomSnackbar.shows(context, message: "Status is empty");
//       return;
//     }

//     if (completionNote.isEmpty) {
//       CustomSnackbar.shows(context, message: "Completion Note is empty");
//       return;
//     }

//     final ServicesModel model = ServicesModel.create(
//         completedAt: completedDateTime,
//         status: status,
//         completionNotes: completionNote,
//         newPartsUsed: newpart);

//     context
//         .read<UpdateServiceReqBloc>()
//         .add(UpdateServiceReqEvent.updateService(
//           id: id,
//           model: model,
//         ));
//   }

//   void onmanagerupdate(BuildContext context) {
//     String technitianid = techController.text;
//     if (technitianid.isEmpty) {
//       CustomSnackbar.shows(context, message: "Technician ID is empty");
//       return;
//     }
//     final ServicesModel model = ServicesModel.create(
//       assignedTechnician: int.parse(technitianid),
//     );
//     context
//         .read<UpdateServiceReqBloc>()
//         .add(UpdateServiceReqEvent.updateService(
//           id: id,
//           model: model,
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
import 'package:techqrmaintance/Screens/Widgets/drop_down_widget.dart';
import 'package:techqrmaintance/Screens/Widgets/multiselectiondropdown.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/application/inventry_bloc/inventry_bloc.dart';
import 'package:techqrmaintance/application/servicereqbyidbloc/service_req_by_id_bloc.dart';
import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/application/techlistbloc/tech_list_bloc.dart';
import 'package:techqrmaintance/application/updateservicebloc/update_service_req_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_model.dart';

class UpdateTaskScreen extends StatelessWidget {
  final String id;
  UpdateTaskScreen({
    super.key,
    required this.id,
  });

  // Controllers for the text fields
  final TextEditingController completedDateController = TextEditingController();
  final TextEditingController statusController = TextEditingController();
  final TextEditingController completionNoteController =
      TextEditingController();
  final TextEditingController techController = TextEditingController();

  // Define consistent colors
  final Color primaryBlueColor = Color(0xFF195E8E);
  final Color lightBlueColor = Color(0xFFE7F0F7);
  final Color lightGreyColor = Color(0xFFF5F5F5);
  final Color midGreyColor = Color(0xFF6B7280);
  final Color darkGreyColor = Color(0xFF4B5563);

  @override
  Widget build(BuildContext context) {
    List<int>? newpart;
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<TechListBloc>().add(TechListEvent.getTechlist());
        context.read<InventryBloc>().add(InventryEvent.getInventry());
        context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
        context.read<SingleUserBloc>().add(
              SingleUserEvent.singleUser(
                id: context.read<SpblocBloc>().state.userData.toString(),
              ),
            );
      },
    );

    return Scaffold(
      backgroundColor: lightGreyColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: lightGreyColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: primaryBlueColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: BlocBuilder<SingleUserBloc, SingleUserState>(
          builder: (context, state) {
            String title = state.user.role == "Area Manager"
                ? "Assign Task"
                : "Update Task";
            return Text(
              title,
              style: TextStyle(
                fontSize: 22,
                color: primaryBlueColor,
                fontWeight: FontWeight.w600,
              ),
            );
          },
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<SingleUserBloc, SingleUserState>(
        builder: (context, spstate) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Section header container
                Container(
                  width: double.infinity,
                  color: lightBlueColor,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Text(
                    spstate.user.role == "Area Manager"
                        ? "Assignment Details"
                        : "Task Details",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: primaryBlueColor,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // completion date - only for technicians
                      if (spstate.user.role != "Area Manager")
                        _buildInputField(
                          icon: Icons.calendar_today_outlined,
                          label: "Completed Date",
                          child: CustomTextField(
                            controller: completedDateController,
                            hintText: "Select date",
                            curveRadius: 10,
                            boolVal: true,
                            sufficChild: IconButton(
                              onPressed: () => onSelectDate(context),
                              icon: Icon(Icons.calendar_today_outlined,
                                  color: primaryBlueColor),
                            ),
                          ),
                        ),

                      SizedBox(height: 16),

                      // Technician selection for Area Manager
                      if (spstate.user.role == "Area Manager")
                        _buildInputField(
                          icon: Icons.person_outline,
                          label: "Assign Technician",
                          child: BlocBuilder<TechListBloc, TechListState>(
                            builder: (context, state) {
                              final List<String> technamelist = state.techlist
                                  .where((onlytech) =>
                                      onlytech.role == "Technician")
                                  .map((tech) => "${tech.id} ${tech.fullName}")
                                  .toList();

                              return Theme(
                                data: Theme.of(context).copyWith(
                                  iconTheme:
                                      IconThemeData(color: primaryBlueColor),
                                ),
                                child: DropDownSearchWidget(
                                  controller: techController,
                                  serarchbox: true,
                                  states: technamelist,
                                  key: Key("tech"),
                                  dropdownLabel: "Select Technician",
                                  iconprefix: Icons.person_outline,
                                ),
                              );
                            },
                          ),
                        ),

                      // Status dropdown for technicians
                      if (spstate.user.role != "Area Manager")
                        _buildInputField(
                          icon: Icons.flag_outlined,
                          label: "Status",
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              iconTheme: IconThemeData(color: primaryBlueColor),
                            ),
                            child: DropDownSearchWidget(
                              controller: statusController,
                              serarchbox: false,
                              states: ["In Progress", "Completed"],
                              key: Key("status"),
                              dropdownLabel: "Select Status",
                              iconprefix: Icons.flag_outlined,
                            ),
                          ),
                        ),

                      SizedBox(height: 16),

                      // Inventory selection for technicians
                      if (spstate.user.role != "Area Manager")
                        _buildInputField(
                          icon: Icons.inventory_2_outlined,
                          label: "Parts Used",
                          child: BlocBuilder<InventryBloc, InventryState>(
                            builder: (context, state) {
                              final List<String> inventoryItems = state.inventry
                                  .where((item) =>
                                      item.orgId == spstate.user.orgId)
                                  .map((e) => "${e.id} ${e.name}")
                                  .whereType<String>()
                                  .toList();

                              return Theme(
                                data: Theme.of(context).copyWith(
                                  iconTheme:
                                      IconThemeData(color: primaryBlueColor),
                                ),
                                child: MultiSelectDropdown<String>(
                                  items: inventoryItems,
                                  label: "Select Inventory Items",
                                  selectedItems: [],
                                  onSelectionChanged: (selectedParts) {
                                    newpart = selectedParts;
                                  },
                                ),
                              );
                            },
                          ),
                        ),

                      SizedBox(height: 16),

                      // Notes section for technicians
                      if (spstate.user.role != "Area Manager")
                        _buildInputField(
                          icon: Icons.note_outlined,
                          label: "Completion Notes",
                          child: CustomTextField(
                            controller: completionNoteController,
                            hintText: "Enter notes about task completion",
                            curveRadius: 10,
                            boolVal: false,
                            maxLine: 5,
                          ),
                        ),

                      // Help text for notes (like the PIN help text in the image)
                      if (spstate.user.role != "Area Manager")
                        Padding(
                          padding: const EdgeInsets.only(left: 36.0, top: 8),
                          child: Text(
                            "Please provide details about the task completion and any challenges encountered.",
                            style: TextStyle(
                              fontSize: 12,
                              color: midGreyColor,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),

                      SizedBox(height: 40),

                      // Submit button section
                      Center(
                        child: BlocBuilder<UpdateServiceReqBloc,
                            UpdateServiceReqState>(
                          builder: (context, state) {
                            if (state.isFailure) {
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                CustomSnackbar.shows(context,
                                    message: "Failed to update task");
                              });
                            } else if (state.respons.isNotEmpty) {
                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                context.read<ServiceReqByIdBloc>().add(
                                      ServiceReqByIdEvent.getservicebyid(
                                          id: id),
                                    );
                                context
                                    .read<ServiceRequestBloc>()
                                    .add(ServiceRequestEvent.getServicesreq());

                                CustomSnackbar.shows(context,
                                    message: state.respons);
                                context
                                    .read<UpdateServiceReqBloc>()
                                    .add(Reset());
                                Navigator.of(context).pop();
                              });
                            }
                            return state.isLoading
                                ? CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: primaryBlueColor,
                                    strokeCap: StrokeCap.round,
                                  )
                                : SizedBox(
                                    width: double.infinity,
                                    height: 52,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: primaryBlueColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        elevation: 0,
                                      ),
                                      onPressed: () => spstate.user.role ==
                                              "Area Manager"
                                          ? onmanagerupdate(context)
                                          : onUpdate(context, newpart ?? []),
                                      child: Text(
                                        spstate.user.role == "Area Manager"
                                            ? "Assign Task"
                                            : "Update Task",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildInputField({
    required IconData icon,
    required String label,
    required Widget child,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4.0, bottom: 8.0),
          child: Row(
            children: [
              Icon(icon, size: 18, color: primaryBlueColor),
              SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: darkGreyColor,
                ),
              ),
            ],
          ),
        ),
        child,
      ],
    );
  }

  Future<void> onSelectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 30)),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: primaryBlueColor,
              onPrimary: Colors.white,
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child!,
        );
      },
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

      completedDateController.text = formattedDateTime;
    }
  }

  void onUpdate(BuildContext context, List<int> newpart) {
    String completedDate = completedDateController.text;
    String status = statusController.text;
    String completionNote = completionNoteController.text;

    DateTime? completedDateTime;
    try {
      completedDateTime = DateTime.parse(completedDate);
    } catch (e) {
      CustomSnackbar.shows(context, message: "Invalid Completed Date format");
      return;
    }

    if (completedDate.isEmpty) {
      CustomSnackbar.shows(context, message: "Completed Date is empty");
      return;
    }

    if (status.isEmpty) {
      CustomSnackbar.shows(context, message: "Status is empty");
      return;
    }

    if (completionNote.isEmpty) {
      CustomSnackbar.shows(context, message: "Completion Note is empty");
      return;
    }

    final ServicesModel model = ServicesModel.create(
        completedAt: completedDateTime,
        status: status,
        completionNotes: completionNote,
        newPartsUsed: newpart);

    context
        .read<UpdateServiceReqBloc>()
        .add(UpdateServiceReqEvent.updateService(
          id: id,
          model: model,
        ));
  }

  void onmanagerupdate(BuildContext context) {
    String technitianid = techController.text;
    if (technitianid.isEmpty) {
      CustomSnackbar.shows(context, message: "Technician ID is empty");
      return;
    }

    // Extract ID from the selected technician string
    final String idPart = technitianid.split(' ').first;

    final ServicesModel model = ServicesModel.create(
      assignedTechnician: int.parse(idPart),
    );

    context
        .read<UpdateServiceReqBloc>()
        .add(UpdateServiceReqEvent.updateService(
          id: id,
          model: model,
        ));
  }
}
