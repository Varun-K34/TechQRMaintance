import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/tasks/widgets/info_row.dart';

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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Customer Information',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            InfoRowWidget(
              label: 'Name:',
              value: name ?? "no name",
              icon: Icons.person,
            ),
            InfoRowWidget(
              label: 'Phone:',
              value: phone ?? "no phone",
              icon: Icons.phone,
            ),
            InfoRowWidget(
              label: 'Email:',
              value: email ?? "no email",
              icon: Icons.email,
            ),
            InfoRowWidget(
              label: 'Address:',
              value: address ?? "no address",
              icon: Icons.home,
            ),
            InfoRowWidget(
              label: 'GPS:',
              value: gpsCoordinates ?? "no gps",
              icon: Icons.map,
              actionButton: IconButton(
                icon: const Icon(Icons.navigation, size: 20),
                onPressed: () {
                  // Implement navigation functionality
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
