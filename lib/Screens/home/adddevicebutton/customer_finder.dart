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
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<GetidregblocBloc>().add(GetidregblocEvent.reset());
      },
    );
    return Scaffold(
      backgroundColor: primaryWhite,
      appBar: AppBar(),
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
          BlocConsumer<GetidregblocBloc, GetidregblocState>(
            listener: (context, state) {
              if (state.id != null) {
                WidgetsBinding.instance.addPostFrameCallback(
                  (_) {
                    Navigator.of(context).push(
                      createRoute(
                        DeviceRegFormScreen(
                          id: state.id,
                        ),
                      ),
                    );
                  },
                );
              }
            },
            builder: (context, state) {
              return state.isFailure
                  ? Text(
                        "Oops, something went wrong. Please try again.",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : state.isLoading
                      ? CircularProgressIndicator()
                      : CustomMaterialButton(
                          text: "Find",
                          onPressed: () => onPressedFind(context, state.id),
                        );
            },
          ),
        ],
      ),
    );
  }

  void onPressedFind(BuildContext context, int? id) {
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
