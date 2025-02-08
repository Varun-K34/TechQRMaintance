import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Authentication/login_screen.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/home/home.dart';
import 'package:techqrmaintance/application/checkbloc/checkbloc_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        return context
            .read<CheckblocBloc>()
            .add(CheckblocEvent.checkLogOrNot());
      },
    );
    return BlocListener<CheckblocBloc, CheckblocState>(
      listener: (context, state) {
        if (state.authenticated == true) {
          Navigator.of(context).pushAndRemoveUntil(
            createRoute(Home()),
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
            backgroundColor: Colors.white,
            body: Center(
              child: state.failure
                  ? Text("Somthing went Wrong!")
                  : CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
