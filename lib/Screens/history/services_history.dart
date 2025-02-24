import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:techqrmaintance/Screens/Widgets/skelton.dart';
import 'package:techqrmaintance/application/bloccomplaint/complaintbloc_bloc.dart';
import 'package:techqrmaintance/application/maintenancehistory/maintenancehistory_bloc.dart';
import 'package:techqrmaintance/application/spbloc/spbloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:techqrmaintance/domain/historymodel/history_maintenance/hisdata.dart';

class ServicesHistoryScreen extends StatelessWidget {
  const ServicesHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        context.read<MaintenancehistoryBloc>().add(
              MaintenancehistoryEvent.getmaintenencehistory(),
            );
      },
    );
    return Scaffold(
      backgroundColor: primaryWhite,
      appBar: AppBar(
        backgroundColor: primaryWhite,
        title: Text(
          "Service History",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BlocBuilder<MaintenancehistoryBloc, MaintenancehistoryState>(
          builder: (context, state) {
            return Column(
              children: List.generate(
                state.history.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withAlpha(200),
                            spreadRadius: 1,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: HistoryItems(
                        data: state.history[index],
                        stateload: state,
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

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
