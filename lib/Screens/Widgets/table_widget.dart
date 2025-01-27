import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/history/history_overview.dart';
import 'package:techqrmaintance/Screens/tasks/task_overview.dart';

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
                      onPressed: title == "Completed Task"
                          ? null
                          : () {
                              // Handle row click
                              if (title == "Pending Task") {
                                Navigator.of(context)
                                    .push(createRoute(TaskOverviewScreen(
                                  key: UniqueKey(),
                                )));
                              } else if (title == "History") {
                                Navigator.of(context)
                                    .push(createRoute(HistoryOverviewScreen(
                                  key: UniqueKey(),
                                )));
                              }
                            },
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
