// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
// import 'package:techqrmaintance/Screens/area_manager/manager_home/task_view/assigned_task_view_screen.dart';
// import 'package:techqrmaintance/Screens/area_manager/manager_home/task_view/total_task_view.dart';
// import 'package:techqrmaintance/Screens/area_manager/manager_home/task_view/unassigned_task_view_screen.dart';
// import 'package:techqrmaintance/Screens/area_manager/widgets/manager_task_widget.dart';
// import 'package:techqrmaintance/Screens/home/widgets/skelton_home.dart';
// import 'package:techqrmaintance/Screens/home/widgets/task_summary.dart';
// import 'package:techqrmaintance/Screens/portfolio/portfolio_screen.dart';
// import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
// import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
// import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
// import 'package:techqrmaintance/core/colors.dart';

// class ManagerHomeScreen extends StatelessWidget {
//   const ManagerHomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance.addPostFrameCallback(
//       (_) async {
//         context
//             .read<ServiceRequestBloc>()
//             .add(ServiceRequestEvent.getServicesreq());
//         context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
//         context.read<SingleUserBloc>().add(SingleUserEvent.singleUser(
//             id: context.read<SpblocBloc>().state.userData.toString()));
//       },
//     );
//     return Scaffold(
//       backgroundColor: Color(0xfff5f5f5),
//       appBar: AppBar(
//         backgroundColor: Color(0xfff5f5f5),
//         leading: BlocBuilder<SpblocBloc, SpblocState>(
//           builder: (context, state) {
//             return InkWell(
//               onTap: () =>
//                   onPressmanagerProfile(context, state.userData.toString()),
//               child: Icon(
//                 Icons.account_circle_outlined,
//                 size: 35,
//                 color: primaryBlue,
//               ),
//             );
//           },
//         ),
//         title: Text(
//           "Manager Home Screen",
//           style: TextStyle(
//             fontSize: 22,
//             color: primaryBlue,
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
//               child: Container(
//                 height: 170,
//                 width: 401,
//                 padding: EdgeInsets.only(right: 30, left: 20),
//                 decoration: BoxDecoration(
//                     border: Border.all(width: 2, color: primaryBlue),
//                     color: primaryWhite,
//                     borderRadius: BorderRadius.circular(30)),
//                 child: BlocBuilder<SingleUserBloc, SingleUserState>(
//                   builder: (context, spState) {
//                     return BlocBuilder<ServiceRequestBloc, ServiceRequestState>(
//                       builder: (context, state) {
//                         if (state.isLoading) {
//                           return Center(
//                             child: SkeltonHome(),
//                           );
//                         } else if (state.servicelist.isEmpty) {
//                           return Center(
//                             child: Text(
//                               "No tasks found",
//                               style: TextStyle(
//                                 color: primaryBlue,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                           );
//                         } else if (state.isFailure) {
//                           return Center(
//                             child: Text(
//                               "Oops! Something went wrong. Please try again later.",
//                               style: TextStyle(
//                                 color: primaryBlue,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                               textAlign: TextAlign.center,
//                             ),
//                           );
//                         }
//                         return Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             ContainerTextRow(
//                               title: "Unassained Task:",
//                               value: state.servicelist
//                                   .where((task) =>
//                                       task.technician == null &&
//                                       task.assignedTechnician == null &&
//                                       task.orgId == spState.user.orgId &&
//                                       task.status != "Completed")
//                                   .toList()
//                                   .length
//                                   .toString(),
//                             ),
//                             SizedBox(
//                               height: 20,
//                             ),
//                             ContainerTextRow(
//                               title: "Assigned Task:",
//                               value: state.servicelist
//                                   .where((task) =>
//                                       task.assignedTechnician != null &&
//                                       task.technician != null &&
//                                       task.orgId == spState.user.orgId &&
//                                       task.status != "Completed")
//                                   .toList()
//                                   .length
//                                   .toString(),
//                             ),
//                             SizedBox(
//                               height: 20,
//                             ),
//                             ContainerTextRow(
//                               title: "Total task:",
//                               value: state.servicelist
//                                   .where((task) =>
//                                       (task.status == "In Progress" ||
//                                           task.status == "Pending") &&
//                                       task.orgId == spState.user.orgId)
//                                   .toList()
//                                   .length
//                                   .toString(),
//                             ),
//                           ],
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15),
//               child: ManagerTaskWidget(
//                 title: "Unassigned Task",
//                 onTap: () {
//                   Navigator.of(context).push(
//                       createRoute(UnassignedTaskViewScreen(key: UniqueKey())));
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
//               child: ManagerTaskWidget(
//                 title: "Assigned Task",
//                 onTap: () {
//                   Navigator.of(context).push(
//                       createRoute(AssignedTaskViewScreen(key: UniqueKey())));
//                 },
//               ),
//             ),
//             // Padding(
//             //   padding: const EdgeInsets.symmetric(horizontal: 15),
//             //   child: ManagerTaskWidget(
//             //     title: "Total Task",
//             //     onTap: () {
//             //       Navigator.of(context)
//             //           .push(createRoute(TotalTaskView(key: UniqueKey())));
//             //     },
//             //   ),
//             // ),
//             // SizedBox(
//             //   height: 10,
//             // ),
//           ],
//         ),
//       ),
//     );
//   }

//   void onPressmanagerProfile(BuildContext context, String id) {
//     Navigator.of(context).push(createRoute(PortfolioScreen(
//       id: id,
//     )));
//   }
// }

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/area_manager/manager_home/task_view/assigned_task_view_screen.dart';
import 'package:techqrmaintance/Screens/area_manager/manager_home/task_view/unassigned_task_view_screen.dart';
// import 'package:techqrmaintance/Screens/area_manager/widgets/manager_task_widget.dart';
import 'package:techqrmaintance/Screens/home/widgets/skelton_home.dart';
import 'package:techqrmaintance/Screens/portfolio/portfolio_screen.dart';
import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';

class ManagerHomeScreen extends StatelessWidget {
  const ManagerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _initializeData(context);

    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: _buildAppBar(context),
      body: RefreshIndicator(
        onRefresh: () => _refreshData(context),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildWelcomeHeader(),
              _buildSectionTitle("Task Summary", top: 25),
              _buildTaskSummaryCard(context),
              _buildSectionTitle("Quick Actions", top: 25),
              _buildQuickActionsRow(context),
              // Add padding at the bottom to ensure proper spacing
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  void _initializeData(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<ServiceRequestBloc>()
          .add(ServiceRequestEvent.getServicesreq());
      context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
      context.read<SingleUserBloc>().add(SingleUserEvent.singleUser(
          id: context.read<SpblocBloc>().state.userData.toString()));
    });
  }

  Future<void> _refreshData(BuildContext context) async {
    context
        .read<ServiceRequestBloc>()
        .add(ServiceRequestEvent.getServicesreq());
    context.read<SingleUserBloc>().add(SingleUserEvent.singleUser(
        id: context.read<SpblocBloc>().state.userData.toString()));
    // Add a small delay to make the refresh experience more visible
    return Future.delayed(const Duration(milliseconds: 800));
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: primaryBlue,
      toolbarHeight: 70,
      title: const Text(
        "Area Manager",
        style: TextStyle(
          fontSize: 22,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        BlocBuilder<SpblocBloc, SpblocState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: InkWell(
                onTap: () =>
                    _navigateToProfile(context, state.userData.toString()),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 18,
                  child: Icon(
                    Icons.person,
                    size: 26,
                    color: primaryBlue,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildWelcomeHeader() {
    return Container(
      padding: const EdgeInsets.only(left: 20, bottom: 20),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: primaryBlue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white70,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "Manager",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title, {double top = 0}) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: top, bottom: 15),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black87,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildTaskSummaryCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<SingleUserBloc, SingleUserState>(
        builder: (context, spState) {
          return BlocBuilder<ServiceRequestBloc, ServiceRequestState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(child: SkeltonHome());
              } else if (state.servicelist.isEmpty) {
                return _buildEmptyOrErrorContainer("No tasks found");
              } else if (state.isFailure) {
                return _buildEmptyOrErrorContainer(
                    "Oops! Something went wrong. Please try again later.");
              }

              // Calculate task counts
              final int unassignedCount = state.servicelist
                  .where((task) =>
                      task.technician == null &&
                      task.assignedTechnician == null &&
                      task.orgId == spState.user.orgId &&
                      task.status != "Completed")
                  .length;

              final int assignedCount = state.servicelist
                  .where((task) =>
                      task.assignedTechnician != null &&
                      task.technician != null &&
                      task.orgId == spState.user.orgId &&
                      task.status != "Completed")
                  .length;

              final int totalCount = unassignedCount + assignedCount;
              // state.servicelist
              //     .where((task) =>
              //         (task.status == "In Progress" ||
              //             task.status == "Pending") &&
              //         task.orgId == spState.user.orgId)
              //     .length;

              return Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildTaskSummaryItem(
                      title: "Total",
                      count: totalCount.toString(),
                      icon: Icons.assignment,
                      color: primaryBlue,
                    ),
                    _buildDivider(),
                    _buildTaskSummaryItem(
                      title: "Unassigned",
                      count: unassignedCount.toString(),
                      icon: Icons.pending_actions,
                      color: Colors.orange,
                    ),
                    _buildDivider(),
                    _buildTaskSummaryItem(
                      title: "Assigned",
                      count: assignedCount.toString(),
                      icon: Icons.person_add,
                      color: Colors.green,
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildEmptyOrErrorContainer(String message) {
    return Center(
      child: Container(
        height: 150,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Text(
          message,
          style: const TextStyle(
            color: primaryBlue,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 50,
      width: 1,
      color: Colors.grey.withOpacity(0.3),
    );
  }

  Widget _buildQuickActionsRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: _buildActionCard(
              title: "Unassigned Tasks",
              icon: Icons.pending_actions,
              color: Colors.orange,
              onTap: () {
                Navigator.of(context).push(
                  createRoute(UnassignedTaskViewScreen(key: UniqueKey())),
                );
              },
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: _buildActionCard(
              title: "Assigned Tasks",
              icon: Icons.assignment_turned_in,
              color: Colors.green,
              onTap: () {
                Navigator.of(context).push(
                  createRoute(AssignedTaskViewScreen(key: UniqueKey())),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskSummaryItem({
    required String title,
    required String count,
    required IconData icon,
    required Color color,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: color,
            size: 28,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          count,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildActionCard({
    required String title,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color: color,
                size: 32,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToProfile(BuildContext context, String id) {
    Navigator.of(context).push(createRoute(PortfolioScreen(id: id)));
  }
}
