import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
import 'package:techqrmaintance/Screens/Widgets/drop_down_widget.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/application/authbloc/authbloc_bloc.dart';
import 'package:techqrmaintance/application/orgganizationbloc/oranization_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:techqrmaintance/domain/authregmodel/model/auth_reg_model.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController orgidcontroller = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context
          .read<OranizationBloc>()
          .add(OranizationEvent.getOrganizationEvent());
    });
    return Scaffold(
      backgroundColor: primaryWhite,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: primaryBlue,
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: primaryWhite,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 20,
          ),
          //dropdown search
          BlocBuilder<OranizationBloc, OranizationState>(
            builder: (context, state) {
              if (state.isFailure) {
                CustomSnackbar.shows(context, message: "somting went wrong");
              }
              return DropDownSearchWidget(
                key: Key("org"),
                orgidcontroller: orgidcontroller,
                states: state.organizationList.data
                ?.map((e) => "(${e.id}) ${e.orgName}")
                .toList() ??
            [],
              );
            },
          ),

          CustomTextField(
            hintText: "username",
            controller: _usernameController,
            curveRadius: 30,
            boolVal: false,
          ),
          CustomTextField(
            hintText: "email",
            controller: _emailController,
            curveRadius: 30,
            boolVal: false,
          ),
          CustomTextField(
            hintText: "phone",
            controller: _phoneController,
            curveRadius: 30,
            boolVal: false,
          ),
          CustomTextField(
            hintText: "password",
            controller: _passwordController,
            curveRadius: 30,
            boolVal: false,
          ),
          CustomTextField(
            hintText: "confirm password",
            controller: _confirmPasswordController,
            curveRadius: 30,
            boolVal: false,
          ),
          BlocListener<AuthblocBloc, AuthblocState>(
            listener: (context, state) {
              if (state.isError) {
                CustomSnackbar.shows(context,
                    message: "Oops! Something went wrong. Please try again.");
              }
            },
            child: BlocBuilder<AuthblocBloc, AuthblocState>(
              builder: (context, state) {
                return state.isloading == true
                    ? CircularProgressIndicator()
                    : CustomMaterialButton(
                        text: "Sign Up",
                        onPressed: state.isloading
                            ? () {}
                            : () => onPressedSignup(context),
                      );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  void onPressedSignup(BuildContext context) {
    final String username = _usernameController.text.trim();
    final String email = _emailController.text.trim();
    final String password = _passwordController.text.trim();
    log(password.length.toString());
    final String orgid = orgidcontroller.text.trim();
    if (username.isEmpty) {
      CustomSnackbar.shows(context, message: "Username cannot be empty");
      return;
    } else if (email.isEmpty) {
      CustomSnackbar.shows(context, message: "Email cannot be empty");
      return;
    } else if (password.isEmpty) {
      log("password is empty", name: "password");
      CustomSnackbar.shows(context, message: "Password cannot be empty.");
      return;
    } else if (orgid.isEmpty) {
      CustomSnackbar.shows(context, message: "Organization cannot be empty");
      return;
    } else if (password.length < 8) {
      CustomSnackbar.shows(context,
          message: "Password must be at least 8 characters");
      return;
    }
    final model = AuthRegModel(
      orgId: int.parse(orgid),
      full_name: username,
      email: email,
      password: password,
    );
    log(model.toJson().toString());
    context.read<AuthblocBloc>().add(
          AuthblocEvent.signup(
            authmodel: model,
          ),
        );
  }
}
