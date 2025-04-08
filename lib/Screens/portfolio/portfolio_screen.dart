import 'dart:developer';

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
import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/application/techperfomancebloc/tech_perfomence_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';

class PortfolioScreen extends StatefulWidget {
  final String id;
  const PortfolioScreen({super.key, required this.id});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<TechPerfomenceBloc>()
          .add(TechPerfomenceEvent.getTechPerfomance(techid: widget.id));
      context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
      context
          .read<SingleUserBloc>()
          .add(SingleUserEvent.singleUser(id: widget.id));
      // log("ID: ${widget.id}",
      //     name: "PortfolioScreen",);
    });
  }

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              
              children: [
                BlocBuilder<SingleUserBloc, SingleUserState>(
                  builder: (context, state) {
                    if (state.isError) return Text("Oops! No user data found 🫣");
                    return state.isLoading
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleSkeleton(
                                size: 150,
                              ),
                              SizedBox(height: 5),
                              Skeleton(
                                height: 20,
                                width: 300,
                                color: Colors.grey.shade300,
                              ),
                              SizedBox(height: 5),
                            ],
                          )
                        : TopWidgetportfolio(
                            emailid: state.user.email ?? "No Email ID Found");
                  },
                ),
                BlocBuilder<SingleUserBloc, SingleUserState>(
                  builder: (context, state) {
                    if (state.isError) return Text("No Data Found!");
                    return state.isLoading
                        ? Column(
                            children: [
                              Stack(
                                children: [
                                  Skeleton(
                                    height: 150,
                                    width: 320,
                                    color: Colors.grey.shade100,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 20),
                                    child: Column(
                                      children: [
                                        Skeleton(
                                          height: 20,
                                          width: 250,
                                          color: Colors.grey.shade500,
                                        ),
                                        SizedBox(height: 20),
                                        Skeleton(
                                          height: 20,
                                          width: 250,
                                          color: Colors.grey.shade500,
                                        ),
                                        SizedBox(height: 20),
                                        Skeleton(
                                          height: 20,
                                          width: 250,
                                          color: Colors.grey.shade500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        : MiddleWidget(
                            state: state,
                            name: state.user.fullName ?? "No Username",
                            org: state.user.organization?.orgName ??
                                'No Organization',
                            role: state.user.role ?? 'No Role',
                          );
                  },
                ),
                BlocBuilder<SingleUserBloc, SingleUserState>(
                  builder: (context, spstate) {
                    return BlocBuilder<TechPerfomenceBloc, TechPerfomenceState>(
                      builder: (context, state) {
                        if (state.isFailure) return Text("No Data Found!");
                        if (state.isLoading) return CircleSkeleton(size: 150);
            
                        final noData = state
                                    .techPerfimence.totalCompletedServices ==
                                0 &&
                            state.techPerfimence.customerFeedbackRating == null &&
                            state.techPerfimence.averageCompletionTime == null;
            
                        if (noData) {
                          return Center(
                              child: Text("Insufficient data to generate chart"));
                        }
            
                        return spstate.user.role == "Area Manager"
                            ? SizedBox.shrink()
                            : TechnicianPieChart(
                                completedServices: 10,
                                avgTime: double.parse(
                                    state.techPerfimence.averageCompletionTime ??
                                        '5'),
                                feedbackRating:
                                    state.techPerfimence.customerFeedbackRating ==
                                            null
                                        ? 12
                                        : double.parse(state.techPerfimence
                                                .customerFeedbackRating ??
                                            '12'));
                      },
                    );
                  },
                ),
                SizedBox(height: 20),
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
      ),
    );
  }
}
