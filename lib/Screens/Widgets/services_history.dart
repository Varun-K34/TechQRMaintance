import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/Widgets/table_widget.dart';

class ServicesHistoryScreen extends StatelessWidget {
  const ServicesHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Service History",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
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
          Expanded(child: TaskTable(title: "History", rowCount: 20)),
        ],
      ),
    );
  }
}
