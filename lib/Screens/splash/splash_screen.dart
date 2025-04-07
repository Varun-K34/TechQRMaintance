import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Authentication/login_screen.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/area_manager/manager_home/manager_home_screen.dart';
import 'package:techqrmaintance/Screens/home/home.dart';
import 'package:techqrmaintance/application/checkbloc/checkbloc_bloc.dart';
import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:techqrmaintance/local_notification/awesome_nitification.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    NotificationController.requestNotificationPermissions();
    NotificationController.myNotifyScheduleEvery5Seconds(
      title: 'Reminder',
      msg: 'You have some unfinished tasks!',
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
        context.read<CheckblocBloc>().add(CheckblocEvent.checkLogOrNot());
        context.read<SingleUserBloc>().add(
              SingleUserEvent.singleUser(
                id: context.read<SpblocBloc>().state.userData.toString(),
              ),
            );
      },
    );
    return BlocBuilder<SingleUserBloc, SingleUserState>(
      builder: (context, spstate) {
        return BlocListener<CheckblocBloc, CheckblocState>(
          listener: (context, state) {
            if (state.authenticated == true &&
                spstate.user.role == "Technician") {
              Navigator.of(context).pushAndRemoveUntil(
                createRoute(Home()),
                (route) => false,
              );
            } else if (state.authenticated == true &&
                spstate.user.role == "Area Manager") {
              Navigator.of(context).pushAndRemoveUntil(
                createRoute(ManagerHomeScreen()),
                (route) => false,
              );
            } else if (state.unauthenticated == true) {
              Navigator.of(context).pushAndRemoveUntil(
                createRoute(LoginScreen()),
                (route) => false,
              );
            }
          },
          child: BlocBuilder<CheckblocBloc, CheckblocState>(
            builder: (context, state) {
              return Scaffold(
                backgroundColor: primaryBlue,
                body: Center(
                  child: state.failure
                      ? Text("Somthing went Wrong!")
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/aminations/helmet.gif",
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
