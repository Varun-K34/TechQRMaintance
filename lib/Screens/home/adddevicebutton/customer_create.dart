import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/Screens/home/adddevicebutton/reg_by_qr.dart';
import 'package:techqrmaintance/application/custbloc/customer_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:techqrmaintance/domain/customer_model/customer_model_list_saas/customer_model_saas.dart';

class CustomerCreate extends StatelessWidget {
  final TextEditingController _organizationController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _postCodeController = TextEditingController();
  CustomerCreate({super.key});

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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Create Customer",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: primaryBlue,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BlocBuilder<SpblocBloc, SpblocState>(
              builder: (context, state) {
                _organizationController.text = state.userData.orgId.toString();
                return CustomTextField(
                  hintText: 'Organization',
                  controller: _organizationController,
                  curveRadius: 30,
                  boolVal: true,
                );
              },
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
            CustomTextField(
              hintText: 'Enter Phone Number',
              controller: _phoneNumberController,
              curveRadius: 30,
              boolVal: false,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Enter Postcode',
              controller: _postCodeController,
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
                          .pushReplacement(createRoute(RegisterByQr(
                        key: Key("Register"),
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
                            final String phoneNumber =
                                _phoneNumberController.text.trim();
                            final String postCode =
                                _postCodeController.text.trim();
                            final String organization =
                                _organizationController.text.trim();

                            if (username.isEmpty) {
                              CustomSnackbar.shows(context,
                                  message: "Username cannot be empty.");
                              return;
                            }
                            if (email.isEmpty) {
                              CustomSnackbar.shows(context,
                                  message: "Email cannot be empty.");
                              return;
                            }
                            if (phoneNumber.isEmpty) {
                              CustomSnackbar.shows(context,
                                  message: "Phone Number cannot be empty.");
                              return;
                            }
                            if (postCode.isEmpty) {
                              CustomSnackbar.shows(context,
                                  message: "Postcode cannot be empty.");
                              return;
                            }
                            if (organization.isEmpty) {
                              CustomSnackbar.shows(context,
                                  message: "Organization cannot be empty.");
                              return;
                            }
                            final customerModel = CustomerModelSaas.create(
                              orgId: int.parse(organization),
                              fullName: username,
                              phone: phoneNumber,
                              email: email,
                              pin: postCode
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
