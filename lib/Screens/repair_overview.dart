import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';

class RepairOverviewScreen extends StatelessWidget {
  const RepairOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Technician Repair Overview",
          style: TextStyle(
              color: Color(0xff165069),
              fontSize: 22,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: [
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(1), // Adjusts column widths
                      1: FlexColumnWidth(1),
                    },
                    children: [
                      _buildTableRow("ID", "2444545"),
                      _buildTableRow("Brand", "samsung"),
                      _buildTableRow("Model", "samsung"),
                      _buildTableRow("Location", "samsung"),
                      _buildTableRow("Warranty", "samsung"),
                      _buildTableRow("Customer ID", "samsung"),
                      _buildTableRow("Date", "samsung"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/qr-code 1.png"),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomMaterialButton(
                text: "UPDATE",
                onPressed: () {},
              ),
              SizedBox(
                height: 5,
              ),
              CustomMaterialButton(
                text: "GENERATE BILL",
                onPressed: () {},
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
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            overflow: TextOverflow.visible,
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
            overflow: TextOverflow.visible,
            value,
            style: TextStyle(color: Color(0xff165069), fontSize: 20),
          ),
        ),
      ],
    );
  }
}
