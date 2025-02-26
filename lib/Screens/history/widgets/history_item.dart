import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:techqrmaintance/Screens/Widgets/skelton.dart';
import 'package:techqrmaintance/application/maintenancehistory/maintenancehistory_bloc.dart';
import 'package:techqrmaintance/domain/historymodel/history_maintenance/hisdata.dart';

class HistoryItems extends StatelessWidget {
  final HisData data;
  final MaintenancehistoryState stateload;
  const HistoryItems({
    super.key,
    required this.data,
    required this.stateload,
  });

  String _formatDate(String date) {
    final DateTime parsedDate = DateTime.parse(date);
    return DateFormat('MMM dd, yyyy').format(parsedDate);
  }

  @override
  Widget build(BuildContext context) {
    if (stateload.history.isEmpty) {
      return const Center(child: Text("No service history available"));
    }
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
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
                              "Service Date: ${_formatDate(data.serviceDate.toString())}",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[800],
                              ),
                            ),
                    ],
                  ),
                  stateload.isLoading
                      ? Skeleton(
                          height: 20,
                          width: 60,
                          color: Colors.grey,
                        )
                      : Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            "\$${data.serviceCharge}",
                            style: TextStyle(
                              color: Colors.blue[700],
                              fontWeight: FontWeight.bold,
                            ),
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
                          "Parts Changed: ${data.partsChanged}",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[800],
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
