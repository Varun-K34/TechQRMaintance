import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/table_widget.dart';
import 'package:techqrmaintance/application/bloccomplaint/complaintbloc_bloc.dart';

class ServicesHistoryScreen extends StatelessWidget {
  const ServicesHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context
            .read<ComplaintblocBloc>()
            .add(ComplaintblocEvent.getComplaintsTasks());
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
                    .where((task) => task.status == "completed")
                    .toList(),
                title: "History",
                rowCount: state.complaints
                    .where((task) => task.status == "completed")
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
