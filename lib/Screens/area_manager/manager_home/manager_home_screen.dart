import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/area_manager/manager_home/task_view/assigned_task_view_screen.dart';
import 'package:techqrmaintance/Screens/area_manager/manager_home/task_view/total_task_view.dart';
import 'package:techqrmaintance/Screens/area_manager/manager_home/task_view/unassigned_task_view_screen.dart';
import 'package:techqrmaintance/Screens/area_manager/widgets/manager_task_widget.dart';
import 'package:techqrmaintance/Screens/home/widgets/skelton_home.dart';
import 'package:techqrmaintance/Screens/home/widgets/task_summary.dart';
import 'package:techqrmaintance/Screens/portfolio/portfolio_screen.dart';
import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
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
        context.read<SingleUserBloc>().add(SingleUserEvent.singleUser(
            id: context.read<SpblocBloc>().state.userData.toString()));
      },
    );
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        backgroundColor: Color(0xfff5f5f5),
        leading: BlocBuilder<SpblocBloc, SpblocState>(
          builder: (context, state) {
            return InkWell(
              onTap: () =>
                  onPressmanagerProfile(context, state.userData.toString()),
              child: Icon(
                Icons.account_circle_outlined,
                size: 35,
                color: primaryBlue,
              ),
            );
          },
        ),
        title: Text(
          "Manager Home Screen",
          style: TextStyle(
            fontSize: 22,
            color: primaryBlue,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Container(
                height: 170,
                width: 401,
                padding: EdgeInsets.only(right: 30, left: 20),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: primaryBlue),
                    color: primaryWhite,
                    borderRadius: BorderRadius.circular(30)),
                child: BlocBuilder<SingleUserBloc, SingleUserState>(
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
                                      task.technician == null &&
                                      task.assignedTechnician == null &&
                                      task.orgId == spState.user.orgId &&
                                      task.status != "Completed")
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
                                      task.assignedTechnician != null &&
                                      task.technician != null &&
                                      task.orgId == spState.user.orgId &&
                                      task.status != "Completed")
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
                                      task.orgId == spState.user.orgId)
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ManagerTaskWidget(
                title: "Unassigned Task",
                onTap: () {
                  Navigator.of(context).push(
                      createRoute(UnassignedTaskViewScreen(key: UniqueKey())));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              child: ManagerTaskWidget(
                title: "Assigned Task",
                onTap: () {
                  Navigator.of(context).push(
                      createRoute(AssignedTaskViewScreen(key: UniqueKey())));
                },
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15),
            //   child: ManagerTaskWidget(
            //     title: "Total Task",
            //     onTap: () {
            //       Navigator.of(context)
            //           .push(createRoute(TotalTaskView(key: UniqueKey())));
            //     },
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
          ],
        ),
      ),
    );
  }

  void onPressmanagerProfile(BuildContext context, String id) {
    Navigator.of(context).push(createRoute(PortfolioScreen(
      id: id,
    )));
  }
}
