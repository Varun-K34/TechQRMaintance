import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/Widgets/skelton.dart';
import 'package:techqrmaintance/Screens/tasks/task_overview.dart';
import 'package:techqrmaintance/Screens/tasks/task_screen.dart';
import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';

class PreviousWork extends StatelessWidget {
  final String? id;
  final String? serialno;
  final String? title;
  const PreviousWork({super.key, this.title, this.serialno, this.id});

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
      backgroundColor: primaryWhite,
      appBar: AppBar(
        backgroundColor: primaryWhite,
        title: Text(
          "Previous Tasks",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<SpblocBloc, SpblocState>(
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
                        service.device?.serialNumber == serialno &&
                        //service.assignedTechnician == spstate.userData.id &&
                        service.orgId == spstate.userData.orgId &&
                        service.status == "Completed",
                  )
                  .toList();
              if (servlist.isEmpty) {
                return Center(
                  child: Text("No Data"),
                );
              }
              return ListView(
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
                                          title: title,
                                          currentUserId: services.id.toString(),
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
              );
            },
          );
        },
      ),
    );
  }
}
