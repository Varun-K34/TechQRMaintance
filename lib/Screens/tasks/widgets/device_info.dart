import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/tasks/widgets/info_row.dart';

class Deviceinfo extends StatelessWidget {
  final String? catagory;
  final String? serialNumber;
  final String? installation;
  final String? warranty;
  final String? freeMaintenance;
  final String? location;
  const Deviceinfo({
    super.key,
    required this.catagory,
    required this.serialNumber,
    required this.installation,
    required this.warranty,
    required this.freeMaintenance,
    required this.location,
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
              'Device Information',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            InfoRowWidget(
              label: 'Category:',
              value: catagory ?? "no category",
              icon: Icons.category,
            ),
            InfoRowWidget(
              label: 'Serial Number:',
              value: serialNumber ?? "no serial number",
              icon: Icons.qr_code,
            ),
            InfoRowWidget(
              label: 'Installation:',
              value: installation ?? "no installation",
              icon: Icons.calendar_today,
            ),
            InfoRowWidget(
              label: 'Warranty:',
              value: warranty ?? "no warranty",
              icon: Icons.security,
            ),
            InfoRowWidget(
              label: 'Free Maintenance:',
              value: freeMaintenance ?? "no free maintenance",
              icon: Icons.build,
            ),
            InfoRowWidget(
              label: 'Location:',
              value: location ?? "no location",
              icon: Icons.location_on,
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
