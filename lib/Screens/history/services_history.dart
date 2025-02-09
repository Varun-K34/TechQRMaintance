import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/table_widget.dart';
import 'package:techqrmaintance/application/bloccomplaint/complaintbloc_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';

// ignore: must_be_immutable
class ServicesHistoryScreen extends StatelessWidget {
  const ServicesHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        context
            .read<ComplaintblocBloc>()
            .add(ComplaintblocEvent.getComplaintsTasks());
        context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
      },
    );
    return Scaffold(
      backgroundColor: primaryWhite,
      appBar: AppBar(
        backgroundColor: primaryWhite,
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
          Expanded(child: BlocBuilder<SpblocBloc, SpblocState>(
            builder: (context, spState) {
              return BlocBuilder<ComplaintblocBloc, ComplaintblocState>(
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
                          color: primaryBlue,
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
                          color: primaryBlue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
                  }
                  return TaskTable(
                    statevalues: state.complaints
                        .where(
                          (task) =>
                              task.status == "completed" &&
                              task.assignedTechnicianId == spState.userData.id,
                        )
                        .toList(),
                    title: "History",
                    rowCount: state.complaints
                        .where(
                          (task) =>
                              task.status == "completed" &&
                              task.assignedTechnicianId == spState.userData.id,
                        )
                        .toList()
                        .length,
                  );
                },
              );
            },
          )),
        ],
      ),
    );
  }
}
