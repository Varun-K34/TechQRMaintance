import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/tasks/task_overview.dart';
import 'package:techqrmaintance/Screens/tasks/task_screen.dart';
import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_model.dart';

class AssignedTaskViewScreen extends StatelessWidget {
  const AssignedTaskViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
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
      appBar: AppBar(
        title: Text("assigned task"),
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
              final List<ServicesModel> assignedtask = state.servicelist
                  .where((service) =>
                      service.assignedTechnician != null &&
                      service.technician != null &&
                      service.orgId == spstate.user.orgId &&
                      service.status != "Completed")
                  .toList();
              if (assignedtask.isEmpty) {
                return Center(
                  child: Text("No Data"),
                );
              }
              return ListView(
                children: List.generate(
                  assignedtask.length,
                  (index) {
                    log("message ${assignedtask.length}");
                    log(state.servicelist[index].toString());
                    final services = assignedtask[index];
                    log(services.toString());
                    return TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0.0, end: 1.0),
                      duration: Duration(milliseconds: 500 + (index * 100)),
                      builder: (context, value, child) {
                        return Opacity(
                          opacity: value,
                          child: Transform.translate(
                            offset: Offset(
                              0,
                              50 * (1 - value),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    createRoute(
                                      TaskOverviewScreen(
                                        title: "assigned task",
                                        currentUserId: services.id.toString(),
                                        key: UniqueKey(),
                                      ),
                                    ),
                                  );
                                },
                                child: MainContainertask(services: services),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
