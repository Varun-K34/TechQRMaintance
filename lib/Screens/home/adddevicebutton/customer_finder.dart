import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/device_reg_form.dart';
import 'package:techqrmaintance/application/getidregbloc/getidregbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';

class CustomerFinder extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  CustomerFinder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Find Customer",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: primaryBlue,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            controller: emailController,
            hintText: "Enter email",
            curveRadius: 30,
            boolVal: false,
          ),
          SizedBox(
            height: 20,
          ),
          BlocBuilder<GetidregblocBloc, GetidregblocState>(
            builder: (context, state) {
              if (state.id != null) {
                WidgetsBinding.instance.addPostFrameCallback(
                  (timeStamp) {
                    Navigator.of(context).push(
                      createRoute(
                        DeviceRegFormScreen(
                          id: state.id,
                        ),
                      ),
                    );
                  },
                );
              } else if (state.isLoading) {
                return CircularProgressIndicator();
              }
              return CustomMaterialButton(
                text: "Find",
                onPressed: () => onPressedFind(
                  context,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  void onPressedFind(BuildContext context) {
    final email = emailController.text.trim();
    if (email.isEmpty) {
      CustomSnackbar.shows(
        context,
        message: "Please enter an email address.",
      );
      return;
    }
    context.read<GetidregblocBloc>().add(
          GetidregblocEvent.getid(email: email),
        );
  }
}
