import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/device_reg_form.dart';
import 'package:techqrmaintance/application/custbloc/customer_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:techqrmaintance/domain/customer_model/customer_model.dart';

class CustomerCreate extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  CustomerCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryWhite,
      appBar: AppBar(
        backgroundColor: primaryWhite,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Customer Create",
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
              hintText: 'Enter email',
              controller: _emailController,
              curveRadius: 30,
              boolVal: false,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Enter username',
              controller: _usernameController,
              curveRadius: 30,
              boolVal: false,
            ),
            SizedBox(
              height: 20,
            ),
            BlocListener<CustomerBloc, CustomerState>(
              listener: (context, state) {
                if (state.isError) {
                  CustomSnackbar.shows(context,
                      message: "Creation Failed! Please try again.");
                } else if (state.customerList != null) {
                  final int? id = state.customerList;
                  WidgetsBinding.instance.addPostFrameCallback(
                    (_) {
                      Navigator.of(context)
                          .pushReplacement(createRoute(DeviceRegFormScreen(
                        id: id,
                      )));
                    },
                  );
                  CustomSnackbar.shows(context,
                      message: "Customer created successfully!");
                }
              },
              child: BlocBuilder<CustomerBloc, CustomerState>(
                builder: (context, state) {
                  return state.isLoading
                      ? CircularProgressIndicator()
                      : CustomMaterialButton(
                          text: 'Create',
                          onPressed: () {
                            final String email = _emailController.text.trim();
                            final String username =
                                _usernameController.text.trim();

                            if (username.isEmpty || email.isEmpty) {
                              CustomSnackbar.shows(context,
                                  message: "Please fill all fields.");
                              return;
                            }
                            final customerModel = CustomerModel(
                              name: username,
                              email: email,
                            );
                            //log(customerModel.toJson().toString());
                            context.read<CustomerBloc>().add(
                                  CustomerEvent.signup(
                                      customerModel: customerModel),
                                );
                          },
                        );
                },
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
