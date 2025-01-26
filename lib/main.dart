import 'package:techqrmaintance/Screens/Authentication/signup_screen.dart';
import 'package:techqrmaintance/Screens/history/history_overview.dart';
import 'package:techqrmaintance/Screens/history/services_history.dart';
import 'package:techqrmaintance/Screens/repair_overview.dart';
import 'package:techqrmaintance/Screens/tasks/task_overview.dart';
import 'package:techqrmaintance/Screens/tasks/task_screen.dart';

import 'Screens/Authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/home/home.dart';
import 'package:techqrmaintance/Screens/Authentication/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HistoryOverviewScreen());
  }
}
