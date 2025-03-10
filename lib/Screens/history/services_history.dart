import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/history/widgets/history_item.dart';
import 'package:techqrmaintance/application/maintenancehistory/maintenancehistory_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';

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
