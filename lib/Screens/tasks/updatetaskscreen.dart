import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
import 'package:techqrmaintance/Screens/Widgets/drop_down_widget.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/application/servicereqbyidbloc/service_req_by_id_bloc.dart';
import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
import 'package:techqrmaintance/application/updateservicebloc/update_service_req_bloc.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_model.dart';
import 'package:techqrmaintance/infrastructure/servicesrequestservices/update_service_service.dart';

class UpdateTaskScreen extends StatelessWidget {
  final String id;
  UpdateTaskScreen({super.key, required this.id});

  // Controllers for the text fields
  final TextEditingController completedDateController = TextEditingController();
  final TextEditingController statusController = TextEditingController();
  final TextEditingController completionNoteController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Task"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            controller: completedDateController,
            hintText: "Completed Date",
            curveRadius: 20,
            boolVal: true,
            sufficChild: IconButton(
                onPressed: () => onSelectDate(context),
                icon: Icon(Icons.calendar_today_outlined)),
          ),
          SizedBox(
            height: 16,
          ),
          DropDownSearchWidget(
            controller: statusController,
            serarchbox: false,
            states: ["In Progress", "Completed"],
            key: Key("status"),
            dropdownLabel: "Status",
            iconprefix: Icons.flag,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            controller: completionNoteController,
            hintText: "Completion Note",
            curveRadius: 20,
            boolVal: false,
            maxLine: 5,
          ),
          SizedBox(
            height: 16,
          ),
          BlocBuilder<UpdateServiceReqBloc, UpdateServiceReqState>(
            builder: (context, state) {
              if (state.isFailure) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  CustomSnackbar.shows(context,
                      message: "Failed to update task");
                });
              } else if (state.respons.isNotEmpty) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  context.read<ServiceReqByIdBloc>().add(
                        ServiceReqByIdEvent.getservicebyid(id: id),
                      );
                  context
                      .read<ServiceRequestBloc>()
                      .add(ServiceRequestEvent.getServicesreq());

                  CustomSnackbar.shows(context, message: state.respons);
                  context.read<UpdateServiceReqBloc>().add(Reset());
                  Navigator.of(context).pop();
                });
              }
              return state.isLoading
                  ? CircularProgressIndicator(
                      strokeWidth: 2,
                      strokeCap: StrokeCap.round,
                    )
                  : SizedBox(
                      height: 55,
                      width: 200,
                      child: CustomMaterialButton(
                        text: "update",
                        onPressed: () => onUpdate(context),
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }

  Future<void> onSelectDate(BuildContext context) async {
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

      completedDateController.text = formattedDateTime;
    }
  }

  void onUpdate(BuildContext context) {
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
    );

    context
        .read<UpdateServiceReqBloc>()
        .add(UpdateServiceReqEvent.updateService(
          id: id,
          model: model,
        ));
  }
}
