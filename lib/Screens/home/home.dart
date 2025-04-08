import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/home/widgets/grid_button.dart';
import 'package:techqrmaintance/Screens/home/widgets/skelton_home.dart';
import 'package:techqrmaintance/Screens/home/widgets/task_summary.dart';
import 'package:techqrmaintance/Screens/portfolio/portfolio_screen.dart';
import 'package:techqrmaintance/application/notify_setting_bloc/notify_setting_bloc.dart';
import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:techqrmaintance/domain/settingnotify/setting_notify_model/notify_model.dart';
import 'package:techqrmaintance/local_notification/awesome_nitification.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List gridList = [
    GridContainerButton(
      title: "NOTIFICATION",
      imagePath: 'assets/images/notification.png',
    ),
    GridContainerButton(
      title: "ADD DEVICE",
      imagePath: "assets/images/wireless-internet 1.png",
    ),
    GridContainerButton(
      title: "VIEW TASKS",
      imagePath: "assets/images/task 1.png",
    ),
    GridContainerButton(
      title: "SERVICE\nHISTORY",
      imagePath: "assets/images/documents 1.png",
    ),
  ];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        context.read<NotifySettingBloc>().add(NotifySettingEvent.getNotify());
        context
            .read<ServiceRequestBloc>()
            .add(ServiceRequestEvent.getServicesreq());
        context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
        context.read<NotifySettingBloc>().add(NotifySettingEvent.getNotify());
        context.read<SingleUserBloc>().add(
              SingleUserEvent.singleUser(
                id: context.read<SpblocBloc>().state.userData.toString(),
              ),
            );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NotifySettingBloc, NotifySettingState>(
      listenWhen: (previous, current) =>
          previous.notifyList != current.notifyList,
      listener: (context, state) {
        if (state.isLoading == false && state.notifyList.isNotEmpty) {
          final notify = state.notifyList.firstWhere(
            (element) {
              return element.orgId ==
                  context.read<SingleUserBloc>().state.user.orgId;
            },
            orElse: () {
              return NotifyModel();
            },
          );
          log(notify.notificationInterval.toString(),
              name: "notify model (home)");

          final intervel = notify.notificationInterval ?? 1;

          // Schedule notification using the interval
          NotificationController.requestNotificationPermissions();
          NotificationController.myNotifyScheduleEvery5Seconds(
            interval: intervel,
            title: 'Reminder',
            msg: 'You have some unfinished tasks!',
          );
        }
      },
      child: Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        appBar: AppBar(
          backgroundColor: Color(0xfff5f5f5),
          leading: BlocBuilder<SpblocBloc, SpblocState>(
            builder: (context, state) {
              return InkWell(
                onTap: () => onPressProfile(context, state.userData.toString()),
                child: Icon(
                  Icons.account_circle_outlined,
                  size: 35,
                  color: primaryBlue,
                ),
              );
            },
          ),
          title: Text(
            "Welcome Technitian",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w500,
              color: primaryBlue,
            ),
          ),
        ),
        body: RefreshIndicator(
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          onRefresh: onRefresh,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
                  child: Container(
                    height: 170,
                    width: 401,
                    padding: const EdgeInsets.only(right: 30, left: 20),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: primaryBlue),
                      color: primaryWhite,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: BlocBuilder<SingleUserBloc, SingleUserState>(
                      builder: (context, spState) {
                        return BlocBuilder<ServiceRequestBloc,
                            ServiceRequestState>(
                          builder: (context, state) {
                            if (state.isLoading) {
                              return const Center(child: SkeltonHome());
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
                                  title: "Tasks today:",
                                  value: state.servicelist
                                      .where((task) =>
                                          task.status == "Pending" &&
                                          task.assignedTechnician ==
                                              spState.user.id &&
                                          task.orgId == spState.user.orgId)
                                      .length
                                      .toString(),
                                ),
                                const SizedBox(height: 20),
                                ContainerTextRow(
                                  title: "Pending Tasks:",
                                  value: state.servicelist
                                      .where((task) =>
                                          task.status == "In Progress" &&
                                          task.assignedTechnician ==
                                              spState.user.id &&
                                          task.orgId == spState.user.orgId)
                                      .length
                                      .toString(),
                                ),
                                const SizedBox(height: 20),
                                ContainerTextRow(
                                  title: "Completed Task:",
                                  value: state.servicelist
                                      .where((task) =>
                                          task.status == "Completed" &&
                                          task.assignedTechnician ==
                                              spState.user.id &&
                                          task.orgId == spState.user.orgId)
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: GridView.builder(
                    //  physics: NeverScrollableScrollPhysics(),
                    //shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 10,
                      childAspectRatio: 1,
                    ),
                    itemCount: gridList.length,
                    itemBuilder: (context, index) {
                      return TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0.0, end: 1.0),
                        duration: Duration(milliseconds: 500 + (index * 100)),
                        builder: (context, double value, child) {
                          return Opacity(
                            opacity: value,
                            child: Transform.scale(
                              scale: value,
                              child: gridList[index],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onPressProfile(BuildContext context, String id) {
    Navigator.of(context).push(createRoute(PortfolioScreen(id: id)));
  }

  Future<void> onRefresh() async {
    context
        .read<ServiceRequestBloc>()
        .add(ServiceRequestEvent.getServicesreq());
  }
}
