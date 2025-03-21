import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';
import 'package:techqrmaintance/Screens/Widgets/skelton.dart';
import 'package:techqrmaintance/application/servicesrequest/service_request_bloc.dart';
import 'package:techqrmaintance/domain/servicerequestmodel/services_request_saas/services_model.dart';

class HistoryItems extends StatelessWidget {
  final ServicesModel data;
  final ServiceRequestState stateload;
  const HistoryItems({
    super.key,
    required this.data,
    required this.stateload,
  });

  // String _formatDate(String date) {
  //   final DateTime parsedDate = DateTime.parse(date);
  //   return DateFormat('MMM dd, yyyy').format(parsedDate);
  // }

  @override
  Widget build(BuildContext context) {
    if (stateload.servicelist.isEmpty) {
      return const Center(child: Text("No service history available"));
    }
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            image: DecorationImage(
              image: AssetImage(
                "assets/images/imagetecnitian.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.do_disturb_sharp,
                    size: 16,
                    color: Colors.grey[600],
                  ),
                  SizedBox(width: 8),
                  stateload.isLoading
                      ? Skeleton(
                          height: 20,
                          width: 172,
                          color: Colors.grey,
                        )
                      : Text(
                          "Issue: ${data.issueDescription}",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[800],
                          ),
                        ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.build,
                    size: 16,
                    color: Colors.grey[600],
                  ),
                  SizedBox(width: 8),
                  stateload.isLoading
                      ? Skeleton(
                          height: 20,
                          width: 150,
                          color: Colors.grey,
                        )
                      : Text(
                          "Job Type: ${data.jobType}",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[800],
                          ),
                        ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.flag,
                    size: 16,
                    color: Colors.grey[800],
                  ),
                  SizedBox(width: 8),
                  stateload.isLoading
                      ? Skeleton(
                          height: 20,
                          width: 60,
                          color: Colors.grey,
                        )
                      : Text(
                          "Status: ${data.status}",
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
