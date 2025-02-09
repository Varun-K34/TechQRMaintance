import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/application/authbloc/authbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:techqrmaintance/domain/authregmodel/model/auth_reg_model.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          CustomTextField(
            hintText: "username",
            controller: _usernameController,
          ),
          CustomTextField(
            hintText: "email",
            controller: _emailController,
          ),
          CustomTextField(
            hintText: "phone",
            controller: _phoneController,
          ),
          CustomTextField(
            hintText: "password",
            controller: _passwordController,
          ),
          CustomTextField(
            hintText: "confirm password",
            controller: _confirmPasswordController,
          ),
          BlocListener<AuthblocBloc, AuthblocState>(listener: (context, state) {
            if (state.isError) {
              CustomSnackbar.shows(context,
                  message: "Oops! Something went wrong. Please try again.");
            }
          }, child: BlocBuilder<AuthblocBloc, AuthblocState>(
            builder: (context, state) {
              return state.isloading == true
                  ? CircularProgressIndicator()
                  : CustomMaterialButton(
                      text: "Sign Up",
                      onPressed: () {
                        final String username = _usernameController.text.trim();
                        final String email = _emailController.text.trim();
                        final String password = _passwordController.text.trim();
                        if (username.isEmpty &&
                            email.isEmpty &&
                            password.isEmpty) {
                          CustomSnackbar.shows(context,
                              message:
                                  "Please fill in all the fields to proceed");
                          return;
                        } else if (username.isEmpty) {
                          CustomSnackbar.shows(context,
                              message: "Username cannot be empty");
                          return;
                        } else if (email.isEmpty) {
                          CustomSnackbar.shows(context,
                              message: "Email cannot be empty");
                          return;
                        } else if (password.isEmpty) {
                          CustomSnackbar.shows(context,
                              message: "Password cannot be empty");
                          return;
                        }
                        final model = AuthRegModel(
                          name: username,
                          email: email,
                          password: password,
                        );
                        log(model.toJson().toString());
                        context.read<AuthblocBloc>().add(
                              AuthblocEvent.signup(
                                authmodel: model,
                              ),
                            );
                      },
                    );
            },
          )),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
