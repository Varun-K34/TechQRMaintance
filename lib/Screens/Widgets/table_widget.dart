import 'package:flutter/material.dart';

class TaskTable extends StatelessWidget {
  final String title;
  final int rowCount;

  const TaskTable({
    super.key,
    required this.title,
    required this.rowCount,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Table(
        border: TableBorder.all(color: const Color(0xFFDAD2D2)),
        columnWidths: const {
          0: FlexColumnWidth(), // ID Column
          1: FlexColumnWidth(), // Name Column
          2: FlexColumnWidth(), // Type Column
        },
        children: [
          // Table Header
          TableRow(
            decoration: BoxDecoration(color: Colors.white),
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "ID",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Type",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          // Example Data Rows
          ...List.generate(
            rowCount,
            (index) => TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {},
                      child: Text("${index + 1}", textAlign: TextAlign.center)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Text("$title ${index + 1}", textAlign: TextAlign.center),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Type ${index % 3 + 1}",
                      textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
