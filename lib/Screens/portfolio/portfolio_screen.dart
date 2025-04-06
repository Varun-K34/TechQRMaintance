import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techqrmaintance/Screens/Authentication/login_screen.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/Widgets/skelton.dart';
import 'package:techqrmaintance/Screens/portfolio/widgets/middle_widget.dart';
import 'package:techqrmaintance/Screens/portfolio/widgets/pichart.dart';
import 'package:techqrmaintance/Screens/portfolio/widgets/top_widget.dart';
import 'package:techqrmaintance/application/logbloc/logbloc_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/application/techperfomancebloc/tech_perfomence_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<TechPerfomenceBloc>().add(
              TechPerfomenceEvent.getTechPerfomance(techid: "1"),
            );
        context.read<SpblocBloc>().add(
              SpblocEvent.getSpStoredData(),
            );
      },
    );
    return Scaffold(
      backgroundColor: primaryWhite,
      appBar: AppBar(
        backgroundColor: primaryWhite,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: Text(
            "portfolio",
            style: TextStyle(
              color: primaryBlue,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              BlocBuilder<SpblocBloc, SpblocState>(
                builder: (context, state) {
                  if (state.isFailure) {
                    return Text("Oops! No user data found 🫣");
                  }
                  return state.isLoading
                      ? CircularProgressIndicator()
                      : TopWidgetportfolio(
                          emailid: state.userData.email ?? "No Email ID Found",
                        );
                },
              ),
              BlocBuilder<SpblocBloc, SpblocState>(
                builder: (context, state) {
                  if (state.isFailure) {
                    return Text("No Data Found!");
                  }
                  return state.isLoading
                      ? CircularProgressIndicator()
                      : MiddleWidget(
                          name: state.userData.fullName ?? "No Username",
                          org: state.userData.organization?.orgName ??
                              'No Organization',
                          role: state.userData.role ?? 'No Role',
                        );
                },
              ),
              BlocBuilder<SpblocBloc, SpblocState>(
                builder: (context, spstate) {
                  return BlocBuilder<TechPerfomenceBloc, TechPerfomenceState>(
                    builder: (context, state) {
                      if (state.isFailure) {
                        return Text("No Data Found!");
                      }
                      if (state.isLoading) {
                        return CircleSkeleton(
                          size: 150,
                        );
                      }
                      return
                          // state.techPerfimence.totalCompletedServices == 0 &&
                          //         state.techPerfimence.customerFeedbackRating == null &&
                          //         state.techPerfimence.averageCompletionTime == null
                          //     ? Center(
                          //         child: Text("Insufficient data to generate chart"))
                          //     :
                          spstate.userData.role == "Area Manager"
                              ? SizedBox.shrink()
                              : TechnicianPieChart(
                                  completedServices: 10,
                                  avgTime: double.parse(state.techPerfimence
                                          .averageCompletionTime ??
                                      '5'),
                                  feedbackRating: state.techPerfimence
                                              .customerFeedbackRating ==
                                          null
                                      ? 12
                                      : double.parse(state.techPerfimence
                                              .customerFeedbackRating ??
                                          '12'));
                    },
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomMaterialButton(
                text: "Logout",
                onPressed: () async {
                  context.read<LogblocBloc>().add(LogblocEvent.reset());
                  Navigator.of(context).pushAndRemoveUntil(
                    createRoute(LoginScreen()),
                    (route) => false,
                  );
                  final clearsp = await SharedPreferences.getInstance();
                  await clearsp.clear();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
