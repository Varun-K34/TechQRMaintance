import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/Screens/qrscan/scan_qr.dart';
import 'package:techqrmaintance/application/custbloc/customer_bloc.dart';
import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
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
        context.read<SingleUserBloc>().add(
              SingleUserEvent.singleUser(
                id: context.read<SpblocBloc>().state.userData.toString(),
              ),
            );
      },
    );
    return Scaffold(
      backgroundColor: Color(0xffF9FAFE),
      appBar: AppBar(
        backgroundColor: Color(0xffF9FAFE),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: primaryBlue),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Center(
                  child: Text(
                    "Create Customer",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: primaryBlue,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Center(
                  child: Text(
                    "Add a new customer to your organization",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                _buildSectionHeader("Organization"),
                SizedBox(height: 8),
                BlocBuilder<SingleUserBloc, SingleUserState>(
                  builder: (context, state) {
                    _organizationController.text = state.user.orgId.toString();
                    return _buildTextField(
                      controller: _organizationController,
                      hintText: 'Organization ID',
                      prefixIcon: Icons.business,
                      isReadOnly: true,
                    );
                  },
                ),
                SizedBox(height: 24),
                _buildSectionHeader("Customer Information"),
                SizedBox(height: 8),
                _buildTextField(
                  controller: _emailController,
                  hintText: 'Email Address',
                  prefixIcon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16),
                _buildTextField(
                  controller: _usernameController,
                  hintText: 'Username',
                  prefixIcon: Icons.person_outline,
                ),
                SizedBox(height: 16),
                _buildTextField(
                  controller: _phoneNumberController,
                  hintText: 'Phone Number',
                  prefixIcon: Icons.phone_outlined,
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 24),
                _buildSectionHeader("Security"),
                SizedBox(height: 8),
                _buildTextField(
                  controller: _postCodeController,
                  hintText: 'Enter a 4-digit PIN',
                  prefixIcon: Icons.lock_outline,
                  isPassword: true,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "This PIN will be used to access your complaint QR system.",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[600],
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(height: 40),
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
                              .pushReplacement(createRoute(ScanQr(
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
                          ? Center(
                              child: CircularProgressIndicator(
                                color: primaryBlue,
                              ),
                            )
                          : _buildCreateButton(context);
                    },
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.grey[800],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    required IconData prefixIcon,
    bool isPassword = false,
    bool isReadOnly = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        readOnly: isReadOnly,
        obscureText: isPassword,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[400],
            fontSize: 16,
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: primaryBlue.withOpacity(0.7),
            size: 22,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        ),
      ),
    );
  }

  Widget _buildCreateButton(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [primaryBlue, Color(0xFF005B9F)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        boxShadow: [
          BoxShadow(
            color: primaryBlue.withOpacity(0.3),
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: () => _handleCreateCustomer(context),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          'Create Customer',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void _handleCreateCustomer(BuildContext context) {
    final String email = _emailController.text.trim();
    final String username = _usernameController.text.trim();
    final String phoneNumber = _phoneNumberController.text.trim();
    final String postCode = _postCodeController.text.trim();
    final String organization = _organizationController.text.trim();

    // Validation
    if (username.isEmpty) {
      CustomSnackbar.shows(context, message: "Username cannot be empty.");
      return;
    }
    if (email.isEmpty) {
      CustomSnackbar.shows(context, message: "Email cannot be empty.");
      return;
    }
    if (phoneNumber.isEmpty) {
      CustomSnackbar.shows(context, message: "Phone Number cannot be empty.");
      return;
    }
    if (postCode.isEmpty) {
      CustomSnackbar.shows(context, message: "PIN cannot be empty.");
      return;
    }
    if (organization.isEmpty) {
      CustomSnackbar.shows(context, message: "Organization cannot be empty.");
      return;
    }

    // Create customer model and dispatch event
    final customerModel = CustomerModelSaas.create(
      orgId: int.parse(organization),
      fullName: username,
      phone: phoneNumber,
      email: email,
      pin: postCode,
    );

    log(customerModel.toJson().toString());
    context.read<CustomerBloc>().add(
          CustomerEvent.signup(customerModel: customerModel),
        );
  }
}
