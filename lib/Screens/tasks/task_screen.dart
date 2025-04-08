import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/Widgets/skelton.dart';
import 'package:techqrmaintance/Screens/tasks/task_overview.dart';
import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:techqrmaintance/core/imageurls.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_model.dart';

class TaskScreen extends StatelessWidget {
  final String? title;
  const TaskScreen({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        context
            .read<ServiceRequestBloc>()
            .add(ServiceRequestEvent.getServicesreq());
        context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
        context.read<SingleUserBloc>().add(
              SingleUserEvent.singleUser(
                id: context.read<SpblocBloc>().state.userData.toString(),
              ),
            );
      },
    );

    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        backgroundColor: Color(0xfff5f5f5),
        title: Text(
          "Tasks",
          style: TextStyle(
            fontSize: 24,
            color: primaryBlue,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<SingleUserBloc, SingleUserState>(
        builder: (context, spstate) {
          return BlocBuilder<ServiceRequestBloc, ServiceRequestState>(
            builder: (context, state) {
              if (state.isFailure) {
                return Center(
                  child: Text(
                    "Oops! Something went wrong. Please try again later.",
                  ),
                );
              }
              final servlist = state.servicelist
                  .where(
                    (service) =>
                        service.assignedTechnician == spstate.user.id &&
                        service.orgId == spstate.user.orgId &&
                        (service.status == "Pending" ||
                            service.status == "In Progress"),
                  )
                  .toList();
              if (servlist.isEmpty) {
                return Center(
                  child: Text("No Data"),
                );
              }
              return RefreshIndicator(
                onRefresh: () =>  onRefreshTask(context),
                child: ListView(
                  children: List.generate(
                    servlist.length,
                    (index) {
                      final services = servlist[index];
                      return state.isLoading
                          ? Padding(
                              padding: const EdgeInsets.all(10),
                              child: Skeleton(
                                height: 300,
                                width: double.infinity,
                                color: primaryWhite,
                              ),
                            )
                          : TweenAnimationBuilder(
                              tween: Tween<double>(begin: 0.0, end: 1.0),
                              duration: Duration(milliseconds: 500),
                              builder: (context, double value, child) {
                                return Opacity(
                                  opacity: value,
                                  child: Transform.translate(
                                    offset: Offset(0, 50 * (1 - value)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(
                                              createRoute(TaskOverviewScreen(
                                            serialNo:
                                                services.device?.serialNumber,
                                            title: title,
                                            currentUserId:
                                                services.id.toString(),
                                            key: UniqueKey(),
                                          )));
                                        },
                                        child: MainContainertask(
                                          services: services,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Future<void> onRefreshTask(BuildContext ctx) async {
    ctx.read<ServiceRequestBloc>().add(ServiceRequestEvent.getServicesreq());
  }
}

class MainContainertask extends StatelessWidget {
  const MainContainertask({
    super.key,
    required this.services,
  });

  final ServicesModel services;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xff165069),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color(0xFFF5F5F5),
                image: DecorationImage(
                  fit: BoxFit.contain,
                  scale: 50,
                  image: AssetImage(
                    "assets/images/technician.png",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Job Type : ${services.jobType}",
                    style: TextStyle(
                      color: primaryWhite,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TaskBuildRow(
                    icon: Icons.devices,
                    text: "${services.device?.category?.name}",
                  ),
                  TaskBuildRow(
                      icon: Icons.person,
                      text: "${services.customer?.fullName}"),
                  TaskBuildRow(
                      icon: Icons.pending_actions, text: "${services.status}"),
                  TaskBuildRow(
                      icon: Icons.access_time,
                      text: "${services.preferredTimeslot}"),
                  TaskBuildRow(
                      icon: Icons.flag,
                      text: "${services.emergency}" == "1"
                          ? "High priority"
                          : "Low priority"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TaskBuildRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const TaskBuildRow({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Icon(
            icon,
            size: 16,
            color: text == "High priority" ? Colors.red : primaryWhite,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: text == "High priority" ? Colors.red : primaryWhite,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
