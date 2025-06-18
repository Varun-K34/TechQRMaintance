import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/customer_create.dart';
import 'package:techqrmaintance/Screens/qrscan/scan_qr.dart';
import 'package:techqrmaintance/application/getidregbloc/getidregbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';

class CustomerFinder extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  CustomerFinder({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<GetidregblocBloc>().add(GetidregblocEvent.reset());
      },
    );
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        appBar: AppBar(
          backgroundColor: Color(0xfff5f5f5),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Find Customer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: primaryBlue,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withAlpha(50),
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: TabBar(
                labelColor: primaryBlue,
                unselectedLabelColor: Colors.grey,
                indicator: BoxDecoration(), // This removes the underline
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                tabs: [
                  Tab(
                    text: "By Mobile No.",
                  ),
                  Tab(
                    text: "By Email",
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              height: 80, // Adjust height as needed
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CustomTextField(
                      controller: mobileController,
                      hintText: "Enter Mobile Number",
                      curveRadius: 30,
                      keyboardType: TextInputType.phone,
                      boolVal: false,
                      sufficChild:
                          BlocBuilder<GetidregblocBloc, GetidregblocState>(
                        builder: (context, state) {
                          return state.id == null
                              ? SizedBox.shrink()
                              : Icon(Icons.done);
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: CustomTextField(
                      controller: emailController,
                      hintText: "Enter email",
                      curveRadius: 30,
                      boolVal: false,
                      sufficChild:
                          BlocBuilder<GetidregblocBloc, GetidregblocState>(
                        builder: (context, state) {
                          return state.id == null
                              ? SizedBox.shrink()
                              : Icon(Icons.done);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BlocConsumer<GetidregblocBloc, GetidregblocState>(
              listener: (context, state) {
                WidgetsBinding.instance.addPostFrameCallback(
                  (_) {
                    if (state.id != null) {
                      Navigator.of(context).pushReplacement(
                        createRoute(
                          ScanQr(
                            id: state.id,
                            key: Key("Register"),
                          ),
                        ),
                      );
                    } else if (state.isFailure) {
                      CustomSnackbar.shows(
                        context,
                        message: "Customer not found. Please register.",
                      );
                    }
                  },
                );
              },
              builder: (context, state) {
                return state.isLoading
                    ? CircularProgressIndicator()
                    : CustomMaterialButton(
                        text: "Find",
                        onPressed: () => onPressedFind(context, state.id),
                      );
              },
            ),
            SizedBox(
              height: 10,
            ),
            CustomMaterialButton(
              text: "Register",
              onPressed: () => onPressedRegister(context),
            ),
          ],
        ),
      ),
    );
  }

  void onPressedFind(BuildContext context, int? id) {
    final TabController tabController = DefaultTabController.of(context);
   
    final int activeTabIndex = tabController.index;

    String email = emailController.text.trim();
    String mobile = mobileController.text.trim();

    if (activeTabIndex == 0) {
      // Mobile tab is active
      if (mobile.isEmpty) {
        CustomSnackbar.shows(
          context,
          message: "Please enter a mobile number.",
        );
        return;
      }
      context.read<GetidregblocBloc>().add(
            GetidregblocEvent.getid(emailormobile: mobile, checkString: "mobile"),
          );
    } else {
      // Email tab is active
      if (email.isEmpty) {
        CustomSnackbar.shows(
          context,
          message: "Please enter an email address.",
        );
        return;
      }
      context.read<GetidregblocBloc>().add(
            GetidregblocEvent.getid(emailormobile: email, checkString: 'email'),
          );
    }
  }

  void onPressedRegister(BuildContext ctx) {
    Navigator.of(ctx).push(
      createRoute(
        CustomerCreate(),
      ),
    );
  }
}
