import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/table_widget.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Tasks",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            centerTitle: true,
            bottom: TabBar(
              labelColor: Color(0xff165069),
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              tabs: [
                Tab(
                  text: "Pending",
                ),
                Tab(
                  text: "Completed",
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoSearchTextField(
                onChanged: (value) {
                  // Handle search input changes
                  log("Search text: $value");
                },
                onSubmitted: (value) {
                  // Handle search submission
                  log("Submitted text: $value");
                },
                placeholder: "Search tasks...",
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  TaskTable(
                    title: "Pending Task",
                    rowCount: 20,
                  ),
                  TaskTable(
                    title: "Completed Task",
                    rowCount: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
