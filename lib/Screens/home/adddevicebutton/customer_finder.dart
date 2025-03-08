import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/customer_create.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/device_reg_form.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/reg_by_qr.dart';
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
            sufficChild: BlocBuilder<GetidregblocBloc, GetidregblocState>(
              builder: (context, state) {
                return state.id == null ? SizedBox.shrink() : Icon(Icons.done);
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          BlocConsumer<GetidregblocBloc, GetidregblocState>(
            listener: (context, state) {
              WidgetsBinding.instance.addPostFrameCallback(
                (_) {
                  if (state.id != null) {
                    Navigator.of(context).pushReplacement(
                      createRoute(
                        RegisterByQr(
                          id: state.id,
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

  void onPressedRegister(BuildContext ctx) {
    Navigator.of(ctx).push(
      createRoute(
        CustomerCreate(),
      ),
    );
  }
}
