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
    return Padding(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          left: 20,
          right: 20,
          top: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Update Info", style: TextStyle(fontWeight: FontWeight.bold)),
          CustomTextField(
            hintText: "Full Name",
            controller: nameCtrl,
            curveRadius: 20,
            boolVal: false,
          ),
          CustomTextField(
            hintText: "Email",
            controller: emailCtrl,
            curveRadius: 20,
            boolVal: false,
          ),
          CustomTextField(
            hintText: "Phone",
            controller: phoneCtrl,
            curveRadius: 20,
            boolVal: false,
          ),
          SizedBox(height: 20),
          ElevatedButton(
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
            child: Text("Update"),
          ),
        ],
      ),
    );
  }
}
