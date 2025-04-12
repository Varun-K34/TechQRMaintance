// import 'package:flutter/material.dart';
// import 'package:techqrmaintance/Screens/portfolio/widgets/container_values.dart';
// import 'package:techqrmaintance/Screens/portfolio/widgets/update_bottom_sheet.dart';
// import 'package:techqrmaintance/application/single_user_bloc/single_user_bloc.dart';
// import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
// import 'package:techqrmaintance/core/colors.dart';
// import 'package:techqrmaintance/domain/usermodel/single_user_repo.dart';

// class MiddleWidget extends StatelessWidget {
//   const MiddleWidget({
//     super.key,
//     required this.name,
//     required this.org,
//     required this.role,
//     required this.state,
//   });

//   final String name;
//   final String org;
//   final String role;
//   final SingleUserState state;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Container(
//         padding: EdgeInsets.symmetric(
//           horizontal: 12,
//           vertical: 6,
//         ),
//         decoration: BoxDecoration(
//           color: primaryTransparent,
//           borderRadius: BorderRadius.circular(30),
//           border: Border.all(color: primaryBlack),
//         ),
//         child: Column(
//           children: [
//             Align(
//               alignment: Alignment.topRight,
//               child: IconButton(
//                 icon: Icon(Icons.edit, color: primaryBlue),
//                 onPressed: () {
//                   showModalBottomSheet(
//                     context: context,
//                     isScrollControlled: true,
//                     builder: (_) => EditUserBottomSheet(user: state.user),
//                   );
//                 },
//               ),
//             ),
//             ContainerInsidevaluesWidgets(
//               icon: Icons.account_circle_outlined,
//               text: name.toUpperCase(),
//             ),
//             ContainerInsidevaluesWidgets(
//               icon: Icons.business_outlined,
//               text: org,
//             ),
//             ContainerInsidevaluesWidgets(
//               icon: Icons.work_outline_outlined,
//               text: role.toUpperCase(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

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
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 3),
          ),
        ],
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row with title and edit button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Personal Information",
                style: TextStyle(
                  color: primaryBlue,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.2,
                ),
              ),
              _buildEditButton(context),
            ],
          ),

          const SizedBox(height: 20),
          const Divider(height: 1),
          const SizedBox(height: 20),

          // User information items with improved styling
          _buildInfoItem(
            context: context,
            icon: Icons.person_outline_rounded,
            label: "Full Name",
            value: name,
          ),

          const SizedBox(height: 16),

          _buildInfoItem(
            context: context,
            icon: Icons.business_rounded,
            label: "Organization",
            value: org,
          ),

          const SizedBox(height: 16),

          _buildInfoItem(
            context: context,
            icon: Icons.work_outline_rounded,
            label: "Role",
            value: role,
          ),
        ],
      ),
    );
  }

  Widget _buildEditButton(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (_) => EditUserBottomSheet(user: state.user),
        );
      },
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: primaryBlue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.edit_outlined,
              color: primaryBlue,
              size: 16,
            ),
            const SizedBox(width: 6),
            Text(
              "Edit",
              style: TextStyle(
                color: primaryBlue,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem({
    required BuildContext context,
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: primaryBlue.withOpacity(0.08),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: primaryBlue,
            size: 20,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  color: Color(0xFF2B3A4A),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
