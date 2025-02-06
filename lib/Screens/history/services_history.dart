import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techqrmaintance/Screens/Widgets/table_widget.dart';
import 'package:techqrmaintance/application/bloccomplaint/complaintbloc_bloc.dart';

// ignore: must_be_immutable
class ServicesHistoryScreen extends StatelessWidget {
  ServicesHistoryScreen({super.key});
  int? ids;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        context
            .read<ComplaintblocBloc>()
            .add(ComplaintblocEvent.getComplaintsTasks());
        final sp = await SharedPreferences.getInstance();
        final id = sp.getInt("userID");
        ids = id;
      },
    );
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
          Expanded(child: BlocBuilder<ComplaintblocBloc, ComplaintblocState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.complaints.isEmpty) {
                return Center(
                  child: Text(
                    "No tasks found",
                    style: TextStyle(
                      color: Color(0xff165069),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                );
              } else if (state.isFailure) {
                return Center(
                  child: Text(
                    "Oops! Something went wrong. Please try again later.",
                    style: TextStyle(
                      color: Color(0xff165069),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                );
              }
              return TaskTable(
                statevalues: state.complaints
                    .where((task) =>
                        task.status == "completed" &&
                        task.assignedTechnicianId == ids)
                    .toList(),
                title: "History",
                rowCount: state.complaints
                    .where((task) =>
                        task.status == "completed" &&
                        task.assignedTechnicianId == ids)
                    .toList()
                    .length,
              );
            },
          )),
        ],
      ),
    );
  }
}
