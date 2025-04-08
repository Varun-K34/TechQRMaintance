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

  @override
  void initState() {
    super.initState();
    nameCtrl = TextEditingController(text: widget.user.fullName);
    emailCtrl = TextEditingController(text: widget.user.email);
    phoneCtrl = TextEditingController(text: widget.user.phone);
  }

  @override
  Widget build(BuildContext context) {
    // Colors matching the image
    final Color textColor = Color(0xFF0F5A7A); // Dark teal color for text
    final Color buttonColor = Color(0xFF0F5A7A); // Dark teal for button
    final Color borderColor =
        Color(0xFF0F5A7A).withAlpha(100); // Lighter border color
    final Color dividerColor = Colors.grey.withAlpha(50);

    return Container(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 20,
          right: 20,
          top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with title and close button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Update Profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: textColor,
                ),
              ),
              IconButton(
                icon: Icon(Icons.close, color: textColor),
                onPressed: () => Navigator.pop(context),
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
              ),
            ],
          ),

          // Divider line
          Divider(color: dividerColor, thickness: 1, height: 20),

          // Full Name field label
          Padding(
            padding: const EdgeInsets.only(bottom: 8, top: 5),
            child: Text(
              "Full Name",
              style: TextStyle(
                fontSize: 14,
                color: textColor,
              ),
            ),
          ),

          // Full Name text field
          CustomTextField(
            hintText: "Full Name",
            controller: nameCtrl,
            curveRadius: 20,
            boolVal: false,
          ),

          // Email label
          Padding(
            padding: const EdgeInsets.only(bottom: 8, top: 16),
            child: Text(
              "Email Address",
              style: TextStyle(
                fontSize: 14,
                color: textColor,
              ),
            ),
          ),

          // Email text field
          CustomTextField(
            hintText: "Email",
            controller: emailCtrl,
            curveRadius: 20,
            boolVal: false,
          ),

          // Phone Number label
          Padding(
            padding: const EdgeInsets.only(bottom: 8, top: 16),
            child: Text(
              "Phone Number",
              style: TextStyle(
                fontSize: 14,
                color: textColor,
              ),
            ),
          ),

          // Phone text field
          CustomTextField(
            hintText: "Phone",
            controller: phoneCtrl,
            curveRadius: 20,
            boolVal: false,
          ),

          SizedBox(height: 24),

          // Update button - full width with rounded corners
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                final updated = UserModel.create(
                  fullName: nameCtrl.text,
                  email: emailCtrl.text,
                  phone: phoneCtrl.text,
                );

                context.read<UpdateUserBloc>().add(UpdateUserEvent.updateUser(
                      id: widget.user.id.toString(),
                      model: updated,
                    ));
                context.read<SpblocBloc>().add(SpblocEvent.getSpStoredData());
                context.read<SingleUserBloc>().add(SingleUserEvent.singleUser(
                    id: context.read<SpblocBloc>().state.userData.toString()));

                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 0,
              ),
              child: Text(
                "Update Profile",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          SizedBox(height: 16),
        ],
      ),
    );
  }
}
