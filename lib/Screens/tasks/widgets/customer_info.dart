import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/tasks/widgets/info_row.dart';
import 'package:techqrmaintance/core/colors.dart';

class CustomerInfo extends StatelessWidget {
  final String? name;
  final String? phone;
  final String? email;
  final String? address;
  final String? gpsCoordinates;
  const CustomerInfo({
    super.key,
    required this.name,
    required this.phone,
    required this.email,
    required this.address,
    required this.gpsCoordinates,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: primaryWhite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
            decoration: const BoxDecoration(
              color: primaryBlue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
            ),
            child: Center(
              child: const Text(
                'Customer Information',
                style: TextStyle(
                  fontSize: 18,
                  color: primaryWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 10.0,
            ),
            child: Column(
              children: [
                InfoRowWidget(
                  label: 'Name:',
                  value: name ?? "no name",
                  icon: Icons.person,
                ),
                Divider(),
                InfoRowWidget(
                  label: 'Phone:',
                  value: phone ?? "no phone",
                  icon: Icons.phone,
                ),
                Divider(),
                InfoRowWidget(
                  label: 'Email:',
                  value: email ?? "no email",
                  icon: Icons.email,
                ),
                Divider(),
                InfoRowWidget(
                  label: 'Address:',
                  value: address ?? "no address",
                  icon: Icons.home,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
