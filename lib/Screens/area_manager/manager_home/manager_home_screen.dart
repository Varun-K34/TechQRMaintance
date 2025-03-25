import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/home/widgets/skelton_home.dart';
import 'package:techqrmaintance/Screens/home/widgets/task_summary.dart';
import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';

class ManagerHomeScreen extends StatelessWidget {
  const ManagerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        context
            .read<ServiceRequestBloc>()
            .add(ServiceRequestEvent.getServicesreq());
        context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
      },
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("Manager Home Screen"),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
              child: Container(
                height: 170,
                width: 401,
                padding: EdgeInsets.only(right: 30, left: 20),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: primaryBlue),
                    color: primaryWhite,
                    borderRadius: BorderRadius.circular(30)),
                child: BlocBuilder<SpblocBloc, SpblocState>(
                  builder: (context, spState) {
                    return BlocBuilder<ServiceRequestBloc, ServiceRequestState>(
                      builder: (context, state) {
                        if (state.isLoading) {
                          return Center(
                            child: SkeltonHome(),
                          );
                        } else if (state.servicelist.isEmpty) {
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
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ContainerTextRow(
                              title: "Unassained Task:",
                              value: state.servicelist
                                  .where((task) =>
                                      task.status == "Pending" &&
                                      task.orgId == spState.userData.orgId)
                                  .toList()
                                  .length
                                  .toString(),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ContainerTextRow(
                              title: "Assigned Task:",
                              value: state.servicelist
                                  .where((task) =>
                                      task.status == "In Progress" &&
                                      task.orgId == spState.userData.orgId)
                                  .toList()
                                  .length
                                  .toString(),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ContainerTextRow(
                              title: "Total task:",
                              value: state.servicelist
                                  .where((task) =>
                                      (task.status == "In Progress" ||
                                          task.status == "Pending") &&
                                      task.orgId == spState.userData.orgId)
                                  .toList()
                                  .length
                                  .toString(),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
