// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
// import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
// import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
// import 'package:techqrmaintance/application/update_user_bloc/update_user_bloc.dart';
// import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/user_model.dart';

// class EditUserBottomSheet extends StatefulWidget {
//   final UserModel user;
//   const EditUserBottomSheet({super.key, required this.user});

//   @override
//   State<EditUserBottomSheet> createState() => _EditUserBottomSheetState();
// }

// class _EditUserBottomSheetState extends State<EditUserBottomSheet> {
//   late TextEditingController nameCtrl;
//   late TextEditingController emailCtrl;
//   late TextEditingController phoneCtrl;

//   @override
//   void initState() {
//     super.initState();
//     nameCtrl = TextEditingController(text: widget.user.fullName);
//     emailCtrl = TextEditingController(text: widget.user.email);
//     phoneCtrl = TextEditingController(text: widget.user.phone);
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Colors matching the image
//     final Color textColor = Color(0xFF0F5A7A); // Dark teal color for text
//     final Color buttonColor = Color(0xFF0F5A7A); // Dark teal for button
//     final Color borderColor =
//         Color(0xFF0F5A7A).withAlpha(100); // Lighter border color
//     final Color dividerColor = Colors.grey.withAlpha(50);

//     return Container(
//       padding: EdgeInsets.only(
//           bottom: MediaQuery.of(context).viewInsets.bottom,
//           left: 20,
//           right: 20,
//           top: 10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Header with title and close button
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "Update Profile",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18,
//                   color: textColor,
//                 ),
//               ),
//               IconButton(
//                 icon: Icon(Icons.close, color: textColor),
//                 onPressed: () => Navigator.pop(context),
//                 padding: EdgeInsets.zero,
//                 constraints: BoxConstraints(),
//               ),
//             ],
//           ),

//           // Divider line
//           Divider(color: dividerColor, thickness: 1, height: 20),

//           // Full Name field label
//           Padding(
//             padding: const EdgeInsets.only(bottom: 8, top: 5),
//             child: Text(
//               "Full Name",
//               style: TextStyle(
//                 fontSize: 14,
//                 color: textColor,
//               ),
//             ),
//           ),

//           // Full Name text field
//           CustomTextField(
//             hintText: "Full Name",
//             controller: nameCtrl,
//             curveRadius: 20,
//             boolVal: false,
//           ),

//           // Email label
//           Padding(
//             padding: const EdgeInsets.only(bottom: 8, top: 16),
//             child: Text(
//               "Email Address",
//               style: TextStyle(
//                 fontSize: 14,
//                 color: textColor,
//               ),
//             ),
//           ),

//           // Email text field
//           CustomTextField(
//             hintText: "Email",
//             controller: emailCtrl,
//             curveRadius: 20,
//             boolVal: false,
//           ),

//           // Phone Number label
//           Padding(
//             padding: const EdgeInsets.only(bottom: 8, top: 16),
//             child: Text(
//               "Phone Number",
//               style: TextStyle(
//                 fontSize: 14,
//                 color: textColor,
//               ),
//             ),
//           ),

//           // Phone text field
//           CustomTextField(
//             hintText: "Phone",
//             controller: phoneCtrl,
//             curveRadius: 20,
//             boolVal: false,
//           ),

//           SizedBox(height: 24),

//           // Update button - full width with rounded corners
//           SizedBox(
//             width: double.infinity,
//             height: 50,
//             child: ElevatedButton(
//               onPressed: () {
//                 final updated = UserModel.create(
//                   fullName: nameCtrl.text,
//                   email: emailCtrl.text,
//                   phone: phoneCtrl.text,
//                 );

//                 context.read<UpdateUserBloc>().add(UpdateUserEvent.updateUser(
//                       id: widget.user.id.toString(),
//                       model: updated,
//                     ));
//                 context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
//                 context.read<SingleUserBloc>().add(SingleUserEvent.singleUser(
//                     id: context.read<SpblocBloc>().state.userData.toString()));

//                 Navigator.pop(context);
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: buttonColor,
//                 foregroundColor: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 elevation: 0,
//               ),
//               child: Text(
//                 "Update Profile",
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//           ),

//           SizedBox(height: 16),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_textfield.dart';
import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/application/update_user_bloc/update_user_bloc.dart';
import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/user_model.dart';

class EditUserBottomSheet extends StatefulWidget {
  final UserModel user;
  const EditUserBottomSheet({super.key, required this.user});

  @override
  State<EditUserBottomSheet> createState() => _EditUserBottomSheetState();
}

class _EditUserBottomSheetState extends State<EditUserBottomSheet> {
  late TextEditingController nameCtrl;
  late TextEditingController emailCtrl;
  late TextEditingController phoneCtrl;
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    nameCtrl = TextEditingController(text: widget.user.fullName);
    emailCtrl = TextEditingController(text: widget.user.email);
    phoneCtrl = TextEditingController(text: widget.user.phone);
  }

  @override
  void dispose() {
    nameCtrl.dispose();
    emailCtrl.dispose();
    phoneCtrl.dispose();
    super.dispose();
  }

  void _updateProfile() {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    final updated = UserModel.create(
      fullName: nameCtrl.text.trim(),
      email: emailCtrl.text.trim(),
      phone: phoneCtrl.text.trim(),
    );

    context.read<UpdateUserBloc>().add(UpdateUserEvent.updateUser(
          id: widget.user.id.toString(),
          model: updated,
        ));

    context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
    context.read<SingleUserBloc>().add(SingleUserEvent.singleUser(
        id: context.read<SpblocBloc>().state.userData.toString()));

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    // Theme colors
    final Color primaryColor = Theme.of(context).primaryColor;
    final Color backgroundColor = Colors.white;
    final Color textColor = const Color(0xFF0F5A7A);
    final Color subtitleColor = Colors.grey.shade700;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 16,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Drag handle for bottom sheet
                Center(
                  child: Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Header with title
                Text(
                  "Edit Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: textColor,
                    letterSpacing: 0.3,
                  ),
                ),

                const SizedBox(height: 8),
                Text(
                  "Update your personal information",
                  style: TextStyle(
                    fontSize: 14,
                    color: subtitleColor,
                  ),
                ),

                const SizedBox(height: 24),

                // Form fields
                _buildFormField(
                  label: "Full Name",
                  controller: nameCtrl,
                  icon: Icons.person_outline,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),

                _buildFormField(
                  label: "Email Address",
                  controller: emailCtrl,
                  icon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),

                _buildFormField(
                  label: "Phone Number",
                  controller: phoneCtrl,
                  icon: Icons.phone_outlined,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 24),

                // Action buttons
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Navigator.pop(context),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          side: BorderSide(color: textColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: _isLoading ? null : _updateProfile,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: textColor,
                          foregroundColor: Colors.white,
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: _isLoading
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                  strokeWidth: 2,
                                ),
                              )
                            : const Text(
                                "Save Changes",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
                // Add extra padding at the bottom to avoid keyboard overlap
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormField({
    required String label,
    required TextEditingController controller,
    required IconData icon,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF0F5A7A),
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            validator: validator,
            decoration: InputDecoration(
              hintText: label,
              hintStyle: TextStyle(color: Colors.grey.shade400),
              prefixIcon: Icon(icon, color: const Color(0xFF0F5A7A)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: Color(0xFF0F5A7A), width: 1.5),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.red, width: 1.0),
              ),
              filled: true,
              fillColor: Colors.grey.shade50,
            ),
          ),
        ],
      ),
    );
  }
}
