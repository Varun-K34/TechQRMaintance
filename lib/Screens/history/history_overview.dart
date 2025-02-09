import 'package:flutter/material.dart';
import 'package:techqrmaintance/core/colors.dart';

class HistoryOverviewScreen extends StatelessWidget {
  const HistoryOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Repair Overview",
          style: TextStyle(
              color: primaryBlue,
              fontSize: 22,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: primaryWhite,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          bottom: 70,
          right: 20,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Table(
                columnWidths: {
                  0: FlexColumnWidth(), // Adjusts column widths
                  1: FlexColumnWidth(),
                },
                children: [
                  _buildTableRow("Brand", "Samsung"),
                  _buildTableRow("Model", "AC1231"),
                  _buildTableRow("Device", "AC"),
                  _buildTableRow("Device ID", "D#122344"),
                  _buildTableRow("Warranty", "12/01/2025"),
                  _buildTableRow("Complaint Type", "AC Repair"),
                  _buildTableRow("Complaint ID", "C#12345"),
                  _buildTableRow("Shedule Date", "1/1/2025"),
                  _buildTableRow("Completion Date", "1/1/2025"),
                  _buildTableRow("Payment", "550 Rs"),
                  _buildTableRow("Payment Status", "Paid"),
                  _buildTableRow("Payment ID", "GPAY1256")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow _buildTableRow(String label, String value) {
    return TableRow(
      decoration: BoxDecoration(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Text(
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            label,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryBlue,
                fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Text(
            textAlign: TextAlign.right,
            overflow: TextOverflow.visible,
            value,
            style: TextStyle(color: primaryBlue, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
