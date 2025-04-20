// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:techqrmaintance/Screens/Authentication/login_screen.dart';
// import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
// import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
// import 'package:techqrmaintance/Screens/Widgets/skelton.dart';
// import 'package:techqrmaintance/Screens/portfolio/widgets/middle_widget.dart';
// import 'package:techqrmaintance/Screens/portfolio/widgets/pichart.dart';
// import 'package:techqrmaintance/Screens/portfolio/widgets/top_widget.dart';
// import 'package:techqrmaintance/application/logbloc/logbloc_bloc.dart';
// import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
// import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
// import 'package:techqrmaintance/application/techperfomancebloc/tech_perfomence_bloc.dart';
// import 'package:techqrmaintance/core/colors.dart';

// class PortfolioScreen extends StatefulWidget {
//   final String id;
//   const PortfolioScreen({super.key, required this.id});

//   @override
//   State<PortfolioScreen> createState() => _PortfolioScreenState();
// }

// class _PortfolioScreenState extends State<PortfolioScreen> {
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       context
//           .read<TechPerfomenceBloc>()
//           .add(TechPerfomenceEvent.getTechPerfomance(techid: widget.id));
//       context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
//       context
//           .read<SingleUserBloc>()
//           .add(SingleUserEvent.singleUser(id: widget.id));
//       // log("ID: ${widget.id}",
//       //     name: "PortfolioScreen",);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: primaryWhite,
//       appBar: AppBar(
//         backgroundColor: primaryWhite,
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(30.0),
//           child: Text(
//             "Portfolio",
//             style: TextStyle(
//               color: primaryBlue,
//               fontSize: 24,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 30),
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Center(
//             child: Column(
//               children: [
//                 BlocBuilder<SingleUserBloc, SingleUserState>(
//                   builder: (context, state) {
//                     if (state.isError)
//                       return Text("Oops! No user data found 🫣");
//                     return state.isLoading
//                         ? Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               CircleSkeleton(
//                                 size: 150,
//                               ),
//                               SizedBox(height: 5),
//                               Skeleton(
//                                 height: 20,
//                                 width: 300,
//                                 color: Colors.grey.shade300,
//                               ),
//                               SizedBox(height: 5),
//                             ],
//                           )
//                         : TopWidgetportfolio(
//                             emailid: state.user.email ?? "No Email ID Found");
//                   },
//                 ),
//                 BlocBuilder<SingleUserBloc, SingleUserState>(
//                   builder: (context, state) {
//                     if (state.isError) return Text("No Data Found!");
//                     return state.isLoading
//                         ? Column(
//                             children: [
//                               Stack(
//                                 children: [
//                                   Skeleton(
//                                     height: 150,
//                                     width: 320,
//                                     color: Colors.grey.shade100,
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 20, vertical: 20),
//                                     child: Column(
//                                       children: [
//                                         Skeleton(
//                                           height: 20,
//                                           width: 250,
//                                           color: Colors.grey.shade500,
//                                         ),
//                                         SizedBox(height: 20),
//                                         Skeleton(
//                                           height: 20,
//                                           width: 250,
//                                           color: Colors.grey.shade500,
//                                         ),
//                                         SizedBox(height: 20),
//                                         Skeleton(
//                                           height: 20,
//                                           width: 250,
//                                           color: Colors.grey.shade500,
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           )
//                         : MiddleWidget(
//                             state: state,
//                             name: state.user.fullName ?? "No Username",
//                             org: state.user.organization?.orgName ??
//                                 'No Organization',
//                             role: state.user.role ?? 'No Role',
//                           );
//                   },
//                 ),
//                 BlocBuilder<SingleUserBloc, SingleUserState>(
//                   builder: (context, spstate) {
//                     return BlocBuilder<TechPerfomenceBloc, TechPerfomenceState>(
//                       builder: (context, state) {
//                         if (state.isFailure) return Text("No Data Found!");
//                         if (state.isLoading) return CircleSkeleton(size: 150);

//                         final noData =
//                             state.techPerfimence.totalCompletedServices == 0 &&
//                                 state.techPerfimence.customerFeedbackRating ==
//                                     null &&
//                                 state.techPerfimence.averageCompletionTime ==
//                                     null;

//                         if (noData) {
//                           return Center(
//                               child:
//                                   Text("Insufficient data to generate chart"));
//                         }

//                         return spstate.user.role == "Area Manager"
//                             ? SizedBox.shrink()
//                             : TechnicianPieChart(
//                                 completedServices: 10,
//                                 avgTime: double.parse(state
//                                         .techPerfimence.averageCompletionTime ??
//                                     '5'),
//                                 feedbackRating: state.techPerfimence
//                                             .customerFeedbackRating ==
//                                         null
//                                     ? 12
//                                     : double.parse(state.techPerfimence
//                                             .customerFeedbackRating ??
//                                         '12'));
//                       },
//                     );
//                   },
//                 ),
//                 SizedBox(height: 20),
//                 CustomMaterialButton(
//                   text: "Logout",
//                   onPressed: () async {
//                     context.read<LogblocBloc>().add(LogblocEvent.reset());
//                     Navigator.of(context).pushAndRemoveUntil(
//                       createRoute(LoginScreen()),
//                       (route) => false,
//                     );
//                     final clearsp = await SharedPreferences.getInstance();
//                     await clearsp.clear();
//                   },
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techqrmaintance/Screens/Authentication/login_screen.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/Widgets/skelton.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/Screens/portfolio/widgets/middle_widget.dart';
import 'package:techqrmaintance/Screens/portfolio/widgets/pichart.dart';
import 'package:techqrmaintance/Screens/portfolio/widgets/top_widget.dart';
import 'package:techqrmaintance/application/logbloc/logbloc_bloc.dart';
import 'package:techqrmaintance/application/mark_attentance_user_bloc/mark_attentance_user_bloc.dart';
import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/application/techperfomancebloc/tech_perfomence_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/tech_perfomence_user_model.dart';

class PortfolioScreen extends StatefulWidget {
  final String id;
  final List<String>? perfomencedetails;
  const PortfolioScreen({super.key, required this.id, this.perfomencedetails});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  // Define colors for consistent theming
  final Color primaryColor = const Color(0xFF0A4D68);
  final Color lightPrimaryColor = const Color(0xFFE7F2F8);
  final Color backgroundColor = const Color(0xFFF5F7FA);
  final Color cardShadowColor = Colors.grey.withOpacity(0.08);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadData();
    });
  }

  void _loadData() {
    context.read<TechPerfomenceBloc>().add(
          TechPerfomenceEvent.getTechPerfomance(techid: widget.id),
        );
    context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
    context.read<SingleUserBloc>().add(
          SingleUserEvent.singleUser(id: widget.id),
        );
  }

  Future<void> _refreshData() async {
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: RefreshIndicator(
            color: primaryColor,
            onRefresh: _refreshData,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _markattentance(),
                  const SizedBox(height: 20),
                  _buildProfileSection(),
                  const SizedBox(height: 20),
                  _buildDetailsSection(),
                  const SizedBox(height: 20),
                  _buildPerformanceSection(),
                  const SizedBox(height: 30),
                  _buildLogoutButton(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: primaryColor,
          size: 20,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(
        "My Profile",
        style: TextStyle(
          color: primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.2,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.refresh_rounded,
            color: primaryColor,
          ),
          onPressed: _refreshData,
        ),
      ],
    );
  }

  Widget _buildProfileSection() {
    return BlocBuilder<SingleUserBloc, SingleUserState>(
      builder: (context, state) {
        if (state.isError) {
          return _buildErrorContainer("Couldn't load profile information");
        }

        return state.isLoading
            ? _buildProfileSkeleton()
            : _buildCard(
                child: TopWidgetportfolio(
                  emailid: state.user.email ?? "No Email ID Found",
                ),
                padding: const EdgeInsets.all(24),
              );
      },
    );
  }

  Widget _buildDetailsSection() {
    return BlocBuilder<SingleUserBloc, SingleUserState>(
      builder: (context, state) {
        if (state.isError) {
          return _buildErrorContainer("Couldn't load user details");
        }

        return state.isLoading
            ? _buildDetailsSkeleton()
            : _buildCard(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionHeader(
                      icon: Icons.person_outlined,
                      title: "Personal Information",
                    ),
                    const SizedBox(height: 20),
                    MiddleWidget(
                      state: state,
                      name: state.user.fullName ?? "No Username",
                      org:
                          state.user.organization?.orgName ?? 'No Organization',
                      role: state.user.role ?? 'No Role',
                    ),
                  ],
                ),
              );
      },
    );
  }

  Widget _buildPerformanceSection() {
    return BlocBuilder<SingleUserBloc, SingleUserState>(
      builder: (context, spstate) {
        if (spstate.isError) {
          return _buildErrorContainer("Performance metrics not available");
        }

        if (spstate.isLoading) {
          return _buildCard(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Center(
              child: CircleSkeleton(size: 150),
            ),
          );
        }

        final List<TechPerfomenceUserModel>? perfolist =
            spstate.user.techperfomenceusermodel;
        final noData = perfolist == null ||
            perfolist.isEmpty ||
            (perfolist[0].totalCompletedServices == 0 &&
                perfolist[0].customerFeedbackRating == null &&
                perfolist[0].averageCompletionTime == null);

        if (noData) {
          return _buildErrorContainer(
              "Insufficient data to generate performance metrics");
        }

        return spstate.user.role == "Area Manager"
            ? const SizedBox.shrink()
            : _buildCard(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    _buildSectionHeader(
                      icon: Icons.analytics_rounded,
                      title: "Performance Metrics",
                      centered: true,
                    ),
                    const SizedBox(height: 24),
                    TechnicianPieChart(
                      completedServices:
                          perfolist[0].totalCompletedServices ?? 0,
                      avgTime: double.parse(
                          perfolist[0].averageCompletionTime ?? '0'),
                      feedbackRating:
                          perfolist[0].customerFeedbackRating != null
                              ? double.parse(
                                  perfolist[0].customerFeedbackRating ?? '0')
                              : 0,
                    ),
                    const SizedBox(height: 24),
                    _buildMetricsCard(
                      icon: Icons.task_alt_rounded,
                      title: "Completed Services",
                      value: "${perfolist[0].totalCompletedServices ?? 0}",
                      iconColor: const Color(0xFF4CAF50),
                      bgColor: const Color(0xFFEAF7EC),
                    ),
                    const SizedBox(height: 14),
                    _buildMetricsCard(
                      icon: Icons.timer_outlined,
                      title: "Average Completion Time",
                      value:
                          "${perfolist[0].averageCompletionTime ?? 'N/A'} hours",
                      iconColor: const Color(0xFF2196F3),
                      bgColor: const Color(0xFFE3F2FD),
                    ),
                    const SizedBox(height: 14),
                    _buildMetricsCard(
                      icon: Icons.star_rate_rounded,
                      title: "Customer Feedback Rating",
                      value: perfolist[0].customerFeedbackRating != null
                          ? "${perfolist[0].customerFeedbackRating}/5"
                          : "N/A",
                      iconColor: const Color(0xFFF9A825),
                      bgColor: const Color(0xFFFFF8E1),
                    ),
                  ],
                ),
              );
      },
    );
  }

  Widget _buildSectionHeader({
    required IconData icon,
    required String title,
    bool centered = false,
  }) {
    final headerRow = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: lightPrimaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: primaryColor,
            size: 20,
          ),
        ),
        const SizedBox(width: 14),
        Text(
          title,
          style: TextStyle(
            color: primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.2,
          ),
        ),
      ],
    );

    return centered
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [headerRow],
          )
        : headerRow;
  }

  Widget _buildMetricsCard({
    required IconData icon,
    required String title,
    required String value,
    required Color iconColor,
    required Color bgColor,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      decoration: BoxDecoration(
        color: bgColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 18,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2B3A4A),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogoutButton() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: CustomMaterialButton(
        text: "Logout",
        onPressed: () async {
          context.read<LogblocBloc>().add(LogblocEvent.reset());
          Navigator.of(context).pushAndRemoveUntil(
            createRoute(LoginScreen()),
            (route) => false,
          );
          _clearSharedPreferences();
        },
      ),
    );
  }

  // Reusable card widget with consistent styling
  Widget _buildCard({
    required Widget child,
    EdgeInsetsGeometry padding = const EdgeInsets.all(20),
  }) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: cardShadowColor,
            spreadRadius: 0,
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }

  Widget _buildProfileSkeleton() {
    return _buildCard(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleSkeleton(size: 120),
          const SizedBox(height: 20),
          Skeleton(
            height: 16,
            width: 250,
            color: Colors.grey.shade300,
          ),
          const SizedBox(height: 8),
          Skeleton(
            height: 14,
            width: 180,
            color: Colors.grey.shade200,
          ),
        ],
      ),
    );
  }

  Widget _buildDetailsSkeleton() {
    return _buildCard(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Skeleton(
                height: 40,
                width: 40,
                //radius: 10,
                color: Colors.grey.shade200,
              ),
              const SizedBox(width: 14),
              Skeleton(
                height: 20,
                width: 150,
                color: Colors.grey.shade300,
              ),
            ],
          ),
          const SizedBox(height: 24),
          Skeleton(
            height: 16,
            width: 120,
            color: Colors.grey.shade200,
          ),
          const SizedBox(height: 8),
          Skeleton(
            height: 20,
            width: 200,
            color: Colors.grey.shade300,
          ),
          const SizedBox(height: 16),
          Skeleton(
            height: 16,
            width: 140,
            color: Colors.grey.shade200,
          ),
          const SizedBox(height: 8),
          Skeleton(
            height: 20,
            width: 180,
            color: Colors.grey.shade300,
          ),
          const SizedBox(height: 16),
          Skeleton(
            height: 16,
            width: 100,
            color: Colors.grey.shade200,
          ),
          const SizedBox(height: 8),
          Skeleton(
            height: 20,
            width: 160,
            color: Colors.grey.shade300,
          ),
        ],
      ),
    );
  }

  Widget _buildErrorContainer(String message) {
    return _buildCard(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFFFFF3F3),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.error_outline_rounded,
              size: 32,
              color: Colors.red[400],
            ),
          ),
          const SizedBox(height: 16),
          Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  _clearSharedPreferences() async {
    final clearsp = await SharedPreferences.getInstance();
    await clearsp.clear();
  }

  Widget _markattentance() {
    return _buildCard(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BlocBuilder<MarkAttentanceUserBloc, MarkAttentanceUserState>(
          builder: (context, state) {
            if (state.success.isNotEmpty) {
              WidgetsBinding.instance.addPostFrameCallback(
                (_) {
                  CustomSnackbar.shows(context, message: state.success);
                  context
                      .read<MarkAttentanceUserBloc>()
                      .add(MarkAttentanceUserEvent.reset());
                },
              );
            } else if (state.isFailure) {
              WidgetsBinding.instance.addPostFrameCallback(
                (_) {
                  CustomSnackbar.shows(context,
                      message: "attantance mark fail");
                  context
                      .read<MarkAttentanceUserBloc>()
                      .add(MarkAttentanceUserEvent.reset());
                },
              );
            }
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Button background color
                minimumSize: Size(150, 40), // Increased width and height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded edges
                ),
              ),
              onPressed: () {
                context.read<MarkAttentanceUserBloc>().add(
                    MarkAttentanceUserEvent.markattentance(
                        presentOrNot: "login"));
              },
              child: Text(
                "Start",
                style: TextStyle(
                  color: primaryWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
        BlocBuilder<MarkAttentanceUserBloc, MarkAttentanceUserState>(
          builder: (context, state) {
            if (state.success.isNotEmpty) {
              WidgetsBinding.instance.addPostFrameCallback(
                (_) {
                  CustomSnackbar.shows(context, message: state.success);
                  context
                      .read<MarkAttentanceUserBloc>()
                      .add(MarkAttentanceUserEvent.reset());
                },
              );
            } else if (state.isFailure) {
              WidgetsBinding.instance.addPostFrameCallback(
                (_) {
                  CustomSnackbar.shows(context,
                      message: "attantance mark fail");
                  context
                      .read<MarkAttentanceUserBloc>()
                      .add(MarkAttentanceUserEvent.reset());
                },
              );
            }
            return ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Button background color
                minimumSize: Size(150, 40), // Increased width and height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded edges
                ),
              ),
              onPressed: () {
                context.read<MarkAttentanceUserBloc>().add(
                    MarkAttentanceUserEvent.markattentance(
                        presentOrNot: "logout"));
              },
              child: Text(
                "Finish",
                style: TextStyle(
                  color: primaryWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        ),
      ],
    ));
  }
}
