import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techqrmaintance/Screens/Authentication/login_screen.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/portfolio/widgets/middle_widget.dart';
import 'package:techqrmaintance/Screens/portfolio/widgets/top_widget.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';

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
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: Text(
            "portfolio",
            style: TextStyle(
              color: Color(0xff165069),
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
                        height: height,
                        width: width,
                        name: state.userData.name ?? "No Username",
                        dob: state.userData.dob ?? 'No Date of Birth',
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
