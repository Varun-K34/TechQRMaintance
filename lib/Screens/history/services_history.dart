import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/Widgets/skelton.dart';
import 'package:techqrmaintance/Screens/history/history_overview.dart';
import 'package:techqrmaintance/Screens/history/widgets/history_item.dart';
import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';

class ServicesHistoryScreen extends StatelessWidget {
  const ServicesHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        context.read<ServiceRequestBloc>().add(
              ServiceRequestEvent.getServicesreq(),
            );
        context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
        context.read<SingleUserBloc>().add(
              SingleUserEvent.singleUser(
                id: context.read<SpblocBloc>().state.userData.toString(),
              ),
            );
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BlocBuilder<SingleUserBloc, SingleUserState>(
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
                          service.status == "Completed",
                    )
                    .toList();
                if (servlist.isEmpty) {
                  return Center(
                    child: Text("No Data"),
                  );
                }
                return Column(
                  children: List.generate(
                    servlist.length,
                    (index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          left: 8.0,
                          right: 8.0,
                        ),
                        child: state.isLoading
                            ? Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Skeleton(
                                  height: 300,
                                  width: double.infinity,
                                  color: primaryWhite,
                                ),
                              )
                            : TweenAnimationBuilder(
                                tween: Tween<double>(begin: 0.0, end: 1.0),
                                duration:
                                    Duration(milliseconds: 500 + (index * 100)),
                                builder: (context, value, child) {
                                  return Opacity(
                                    opacity: value,
                                    child: Transform.translate(
                                      offset: Offset(0, 50 * (1 - value)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5,
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).push(
                                                createRoute(
                                                    HistoryOverviewScreen(
                                              taskid:
                                                  servlist[index].id.toString(),
                                              key: UniqueKey(),
                                            )));
                                          },
                                          child: Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey
                                                      .withAlpha(200),
                                                  spreadRadius: 1,
                                                  blurRadius: 4,
                                                  offset: Offset(0, 2),
                                                ),
                                              ],
                                            ),
                                            child: HistoryItems(
                                              data: servlist[index],
                                              stateload: state,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
