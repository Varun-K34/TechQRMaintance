// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:techqrmaintance/Screens/Authentication/signup_screen.dart';
// import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
// import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
// import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
// import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
// import 'package:techqrmaintance/Screens/area_manager/manager_home/manager_home_screen.dart';
// import 'package:techqrmaintance/Screens/home/home.dart';
// import 'package:techqrmaintance/application/logbloc/logbloc_bloc.dart';
// import 'package:techqrmaintance/core/colors.dart';

// class LoginScreen extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: primaryWhite,
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Column(
//           children: [
//             Container(
//               width: 428,
//               height: 280,
//               decoration: BoxDecoration(
//                   color: primaryBlue, // Hexadecimal color code
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(
//                         80), // Adjust this value to match the corner curve
//                   ),
//                   image: DecorationImage(
//                       image: AssetImage('assets/images/loginimage.png'))),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             CustomTextField(
//               hintText: 'Email',
//               controller: emailController,
//               curveRadius: 30,
//               boolVal: false,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             CustomTextField(
//               hintText: 'Password',
//               controller: passwordController,
//               curveRadius: 30,
//               boolVal: false,
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             GestureDetector(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 10),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [Text('Forgot password?')],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             BlocListener<LogblocBloc, LogblocState>(listener: (context, state) {
//               if (state.isFailure) {
//                 CustomSnackbar.shows(
//                   context,
//                   message: "Oops! Something went wrong. Please try again.",
//                 );
//               } else if (state.isSuccess) {
//                 // Navigate to the home screen
//                 if (state.userModelLists.role == "Technician") {
//                   Navigator.of(context).pushAndRemoveUntil(
//                     createRoute(Home()),
//                     (route) => false,
//                   );
//                 }
//                 if (state.userModelLists.role == "Area Manager") {
//                   Navigator.of(context).pushAndRemoveUntil(
//                     createRoute(ManagerHomeScreen()),
//                     (route) => false,
//                   );
//                 }
//               }
//             }, child: BlocBuilder<LogblocBloc, LogblocState>(
//               builder: (context, state) {
//                 return state.isLoading == true
//                     ? Center(
//                         child: CircularProgressIndicator(),
//                       )
//                     : CustomMaterialButton(
//                         key: Key('loginButton'),
//                         text: 'Login',
//                         onPressed: state.isLoading == true
//                             ? () {}
//                             : () {
//                                 final email = emailController.text.trim();
//                                 final password = passwordController.text.trim();
//                                 // Validate the email and password
//                                 if (email.isEmpty || password.isEmpty) {
//                                   CustomSnackbar.shows(
//                                     context,
//                                     message:
//                                         "Please enter valid email and password",
//                                   );
//                                   return;
//                                 } else if (email.isEmpty) {
//                                   CustomSnackbar.shows(
//                                     context,
//                                     message: "Please enter valid email",
//                                   );
//                                   return;
//                                 } else if (password.isEmpty) {
//                                   CustomSnackbar.shows(
//                                     context,
//                                     message: "Please enter valid password",
//                                   );
//                                   return;
//                                 }
//                                 if (password.isNotEmpty && email.isNotEmpty) {
//                                   Future<void> storeCredentials(
//                                       String email, String password) async {
//                                     final prefs =
//                                         await SharedPreferences.getInstance();
//                                     await prefs.setString('email', email);
//                                     await prefs.setString('password', password);
//                                     log("saving completed succefully");
//                                   }

//                                   storeCredentials(email, password);
//                                 }
//                                 context.read<LogblocBloc>().add(
//                                       LogblocEvent.login(email: email),
//                                     );
//                               },
//                       );
//               },
//             )),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('Dont have an account ? '),
//                 GestureDetector(
//                     onTap: () {
//                       // Navigate to the signup screen
//                       Navigator.of(context).push(createRoute(SignupScreen()));
//                     },
//                     child: Text('Signup')),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techqrmaintance/Screens/Authentication/signup_screen.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
import 'package:techqrmaintance/Screens/Widgets/page_route_animation.dart';
import 'package:techqrmaintance/Screens/Widgets/snakbar_widget.dart';
import 'package:techqrmaintance/Screens/area_manager/manager_home/manager_home_screen.dart';
import 'package:techqrmaintance/Screens/home/home.dart';
import 'package:techqrmaintance/application/logbloc/logbloc_bloc.dart';
import 'package:techqrmaintance/application/mark_attentance_user_bloc/mark_attentance_user_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: primaryWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top curved container with image
              _buildHeader(size),

              // Login form
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 32),

                    // Welcome text
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: primaryBlue,
                      ),
                    ),

                    Text(
                      'Sign in to continue',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),

                    const SizedBox(height: 32),

                    // Email input
                    CustomTextField(
                      hintText: 'Email',
                      controller: emailController,
                      curveRadius: 12,
                      boolVal: false,
                      //prefixIcon: Icon(Icons.email_outlined, color: primaryBlue),
                    ),

                    const SizedBox(height: 20),

                    // Password input
                    CustomTextField(
                      hintText: 'Password',
                      controller: passwordController,
                      curveRadius: 12,
                      boolVal: false,
                      // prefixIcon: Icon(Icons.lock_outline, color: primaryBlue),
                    ),

                    const SizedBox(height: 16),

                    // Forgot password
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // Handle forgot password
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: primaryBlue,
                          padding: EdgeInsets.zero,
                          minimumSize: Size(50, 30),
                        ),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),

                    const SizedBox(height: 32),

                    // Login button with BLoC
                    _buildLoginButton(context),

                    const SizedBox(height: 24),

                    // Sign up option
                    _buildSignupOption(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Header with curved container and image
  Widget _buildHeader(Size size) {
    return Container(
      width: size.width,
      height: size.height * 0.3,
      decoration: BoxDecoration(
        color: primaryBlue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
          bottomRight: Radius.circular(60),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background elements or pattern (optional)
          Positioned(
            right: -50,
            top: -50,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
          // Main image
          Image.asset(
            'assets/images/loginimage.png',
            width: size.width * 0.7,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }

  // Login button with BLoC integration
  Widget _buildLoginButton(BuildContext context) {
    return 
        
         BlocListener<LogblocBloc, LogblocState>(
          listener: (context, state) {
            if (state.isFailure) {
              CustomSnackbar.shows(
                context,
                message: "Oops! Something went wrong. Please try again.",
              );
            } else if (state.isSuccess) {
              // Navigate to the appropriate home screen based on user role
              if (state.userModelLists.role == "Technician") {
                Navigator.of(context).pushAndRemoveUntil(
                  createRoute(Home()),
                  (route) => false,
                );
              } else if (state.userModelLists.role == "Area Manager") {
                Navigator.of(context).pushAndRemoveUntil(
                  createRoute(ManagerHomeScreen()),
                  (route) => false,
                );
              }
            }
          },
          child: BlocBuilder<LogblocBloc, LogblocState>(
            builder: (context, state) {
              return state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        key: const Key('loginButton'),
                        onPressed: () => _handleLogin(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryBlue,
                          foregroundColor: Colors.white,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          shadowColor: primaryBlue.withOpacity(0.5),
                        ),
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ));
            },
          ),
        );
      
  }

  // Sign up option row
  Widget _buildSignupOption(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account? ',
          style: TextStyle(color: Colors.grey[600]),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(createRoute(SignupScreen()));
          },
          child: Text(
            'Sign Up',
            style: TextStyle(
              color: primaryBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  // Handle login logic
  void _handleLogin(BuildContext context) async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    // Validate inputs
    if (email.isEmpty && password.isEmpty) {
      CustomSnackbar.shows(
        context,
        message: "Please enter valid email and password",
      );
      return;
    } else if (email.isEmpty) {
      CustomSnackbar.shows(
        context,
        message: "Please enter valid email",
      );
      return;
    } else if (password.isEmpty) {
      CustomSnackbar.shows(
        context,
        message: "Please enter valid password",
      );
      return;
    }

    // Store credentials in shared preferences
    if (password.isNotEmpty && email.isNotEmpty) {
      await _storeCredentials(email, password);
    }

    

    // Trigger login event in bloc
    if (context.mounted) {
      context.read<LogblocBloc>().add(
            LogblocEvent.login(email: email),
          );
    }
  }

  // Store user credentials
  Future<void> _storeCredentials(String email, String password) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setString('password', password);
    log("saving completed successfully");
  }
 
  
}
