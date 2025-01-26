import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';

class TaskOverviewScreen extends StatelessWidget {
  const TaskOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          children: [
            Table(
              columnWidths: {
                0: FlexColumnWidth(), // Adjusts column widths
                1: FlexColumnWidth(),
              },
              children: [
                _buildTableRow("Brand", "samsung"),
                _buildTableRow("Model", "AC123"),
                _buildTableRow("Device", "AC"),
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
