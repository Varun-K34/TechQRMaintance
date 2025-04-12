import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/tasks/widgets/info_row.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Deviceinfo extends StatelessWidget {
  final String? catagory;
  final String? serialNumber;
  final String? installation;
  final String? warranty;
  final String? freeMaintenance;
  final String? location;
  final int? floor;
  final String? room;

  const Deviceinfo({
    super.key,
    required this.catagory,
    required this.serialNumber,
    required this.installation,
    required this.warranty,
    required this.freeMaintenance,
    required this.location,
    required this.floor,
    required this.room,
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
                'Device Information',
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
              horizontal: 10,
              vertical: 10,
            ),
            child: Column(
              children: [
                InfoRowWidget(
                  label: 'Category:',
                  value: catagory ?? "no category",
                  icon: Icons.category,
                ),
                Divider(),
                InfoRowWidget(
                  label: 'Serial Number:',
                  value: serialNumber ?? "no serial number",
                  icon: Icons.qr_code,
                ),
                Divider(),
                InfoRowWidget(
                  label: 'Installation:',
                  value: installation ?? "no installation",
                  icon: Icons.calendar_today,
                ),
                Divider(),
                InfoRowWidget(
                  label: 'Warranty:',
                  value: warranty ?? "no warranty",
                  icon: Icons.security,
                ),
                Divider(),
                InfoRowWidget(
                  label: 'Free Maintenance:',
                  value: freeMaintenance ?? "no free maintenance",
                  icon: Icons.build,
                ),
                Divider(),
                InfoRowWidget(
                  label: 'Floor:',
                  value: floor?.toString() ?? "no floor",
                  icon: Icons.layers,
                ),
                Divider(),
                InfoRowWidget(
                  label: 'Room:',
                  value: room ?? "no room",
                  icon: Icons.meeting_room,
                ),
                Divider(),
                InfoRowWidget(
                  label: 'Location:',
                  value: location ?? "no location",
                  icon: Icons.location_on,
                  actionButton: IconButton(
                    icon: const Icon(Icons.navigation, size: 20),
                    onPressed: () {
                      final String loc = location ?? "no location";
                      if (loc != "no location") {
                        final Uri url = Uri.parse(loc);
                        _launchUrl(url);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('No location available'),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
