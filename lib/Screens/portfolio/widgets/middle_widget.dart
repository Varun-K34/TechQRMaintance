import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/portfolio/widgets/container_values.dart';
import 'package:techqrmaintance/Screens/portfolio/widgets/update_bottom_sheet.dart';
import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:techqrmaintance/domain/usermodel/single_user_repo.dart';

class MiddleWidget extends StatelessWidget {
  const MiddleWidget({
    super.key,
    required this.name,
    required this.org,
    required this.role,
    required this.state,
  });

  final String name;
  final String org;
  final String role;
  final SingleUserState state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          color: primaryTransparent,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: primaryBlack),
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(Icons.edit, color: primaryBlue),
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (_) => EditUserBottomSheet(user: state.user),
                  );
                },
              ),
            ),
            ContainerInsidevaluesWidgets(
              icon: Icons.account_circle_outlined,
              text: name.toUpperCase(),
            ),
            ContainerInsidevaluesWidgets(
              icon: Icons.business_outlined,
              text: org,
            ),
            ContainerInsidevaluesWidgets(
              icon: Icons.work_outline_outlined,
              text: role.toUpperCase(),
            ),
          ],
        ),
      ),
    );
  }
}
