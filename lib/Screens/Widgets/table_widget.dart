import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/history/history_overview.dart';
import 'package:techqrmaintance/Screens/tasks/task_overview.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/datum.dart';

class TaskTable extends StatelessWidget {
  final String title;
  final int rowCount;
  final List<Datum>? statevalues;

  const TaskTable({
    super.key,
    required this.title,
    required this.rowCount,
    this.statevalues,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: rowCount == 0
          ? Center(
              heightFactor: 20,
              child: Text(
                "No Tasks!",
                style: TextStyle(
                  color: Color(0xff165069),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : Table(
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
                ...List.generate(rowCount, (index) {
                  final complaint = statevalues![index];
                  return TableRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            onPressed: () {
                              // Handle row click
                              if (title == "Pending Task") {
                                Navigator.of(context)
                                    .push(createRoute(TaskOverviewScreen(
                                  currentUserId: complaint.id.toString(),
                                  key: UniqueKey(),
                                )));
                              } else if (title == "Today's Task") {
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
                            child: Text("${complaint.id}",
                                textAlign: TextAlign.center)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("${complaint.customer!.name}",
                            textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("${complaint.complaintType!.name}",
                            textAlign: TextAlign.center),
                      ),
                    ],
                  );
                }),
              ],
            ),
    );
  }
}
