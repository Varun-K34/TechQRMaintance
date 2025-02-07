import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/application/complaintdetailbloc/complaintdetailbloc_bloc.dart';

class TaskOverviewScreen extends StatelessWidget {
  final String? currentUserId;
  const TaskOverviewScreen({super.key, this.currentUserId});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<ComplaintdetailblocBloc>().add(
            ComplaintdetailblocEvent.getindividualComplaint(
                id: currentUserId!));
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Task Overview",
          style: TextStyle(
              color: Color(0xff165069),
              fontSize: 22,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          bottom: 70,
          right: 20,
        ),
        child: BlocBuilder<ComplaintdetailblocBloc, ComplaintdetailblocState>(
          builder: (context, state) {
            if (state.isFailure) {
              return Center(
                child: Text(
                  "Oops! Something went wrong. Please try again later.",
                  style: TextStyle(
                    color: Color(0xff165069),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            }
            log(state.complaints.toJson().toString());
            final brand =
                state.complaints.device?.brand ?? "no brand name";
            log(brand);
            final model =
                state.complaints.device?.model ?? "no model name";
            final customer = state.complaints.customer?.name ?? "no name";
            return Column(
              children: [
                state.isLoading
                    ? Center(child: CircularProgressIndicator())
                    : Table(
                        columnWidths: {
                          0: FlexColumnWidth(), // Adjusts column widths
                          1: FlexColumnWidth(),
                        },
                        children: [
                          _buildTableRow("Brand", brand),
                          _buildTableRow("Model", model),
                          _buildTableRow("Customer", customer),
                          _buildTableRow("Device ID", "D#122344"),
                          _buildTableRow("Warranty", "12/01/2025"),
                          _buildTableRow("Complaint Type", "AC Repair"),
                          _buildTableRow("Complaint ID", "C#12345"),
                          _buildTableRow("Status", "Unassigned"),
                        ],
                      ),
                Spacer(),
                CustomMaterialButton(
                  text: "ACCEPT",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 5,
                ),
                CustomMaterialButton(
                  text: "REJECT",
                  onPressed: () {},
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  TableRow _buildTableRow(String label, String value) {
    return TableRow(
      decoration: BoxDecoration(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            label,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff165069),
                fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            textAlign: TextAlign.right,
            overflow: TextOverflow.visible,
            value,
            style: TextStyle(color: Color(0xff165069), fontSize: 20),
          ),
        ),
      ],
    );
  }
}
