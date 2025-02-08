import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/table_widget.dart';
import 'package:techqrmaintance/application/bloccomplaint/complaintbloc_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

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
                  text: "Today's Task",
                ),
                Tab(
                  text: "Pending Task",
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<SpblocBloc, SpblocState>(
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
                      return TabBarView(
                        children: [
                          TaskTable(
                            statevalues: state.complaints
                                .where((task) => task.status == "unassigned")
                                .toList(),
                            title: "Today's Task",
                            rowCount: state.complaints
                                .where((task) => task.status == "unassigned")
                                .toList()
                                .length,
                          ),
                          TaskTable(
                            statevalues: state.complaints
                                .where((task) =>
                                    task.status == "pending" &&
                                    task.assignedTechnicianId ==
                                        spState.userData.id)
                                .toList(),
                            title: "Pending Task",
                            rowCount: state.complaints
                                .where((task) =>
                                    task.status == "pending" &&
                                    task.assignedTechnicianId ==
                                        spState.userData.id)
                                .toList()
                                .length,
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
