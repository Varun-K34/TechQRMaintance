import 'dart:developer';
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
    super.initState();

    // Initial SharedPref and auth check
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        log("splash screen called");
        context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
        context.read<CheckblocBloc>().add(CheckblocEvent.checkLogOrNot());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SpblocBloc, SpblocState>(
      listenWhen: (previous, current) => previous.userData != current.userData,
      listener: (context, spState) {
        final userId = spState.userData;
        if (userId != null) {
          log(userId.toString(), name: "userID from SharedPreferences");
          context
              .read<SingleUserBloc>()
              .add(SingleUserEvent.singleUser(id: userId.toString()));
        }
      },
      child: BlocBuilder<SingleUserBloc, SingleUserState>(
        builder: (context, spstate) {
          return BlocListener<CheckblocBloc, CheckblocState>(
            listener: (context, state) {
              final role = spstate.user.role;

              if (state.authenticated == true && role == "Technician") {
                Navigator.of(context).pushAndRemoveUntil(
                  createRoute(Home()),
                  (route) => false,
                );
              } else if (state.authenticated == true &&
                  role == "Area Manager") {
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
                        ? const Text("Something went Wrong!")
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 100,
                                backgroundColor: primaryWhite,
                                child: Image.asset(
                                  "assets/images/settings.png",
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "Qloop",
                                style: TextStyle(
                                    color: primaryWhite,
                                    fontSize: 50,
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
