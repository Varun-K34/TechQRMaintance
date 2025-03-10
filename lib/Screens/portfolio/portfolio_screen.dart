import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techqrmaintance/Screens/Authentication/login_screen.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/portfolio/widgets/middle_widget.dart';
import 'package:techqrmaintance/Screens/portfolio/widgets/top_widget.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
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
            Spacer(),
            CustomMaterialButton(
              text: "Logout",
              onPressed: () async {
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
    );
  }
}
