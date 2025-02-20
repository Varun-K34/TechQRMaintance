import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:techqrmaintance/Screens/Widgets/custom_button.dart';
import 'package:techqrmaintance/Screens/Widgets/skelton.dart';
import 'package:techqrmaintance/application/scanqrbloc/scan_qr_bloc_bloc.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:techqrmaintance/core/strings.dart';

class RepairOverviewScreen extends StatelessWidget {
  final String? id;
  const RepairOverviewScreen({
    super.key,
    this.id,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        context.read<ScanQrBlocBloc>().add(ScanQrBlocEvent.getScanData(id: id));
      },
    );
    return Scaffold(
      backgroundColor: primaryWhite,
      appBar: AppBar(
        title: Text(
          "Technician Repair Overview",
          style: TextStyle(
              color: primaryBlue, fontSize: 22, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: primaryWhite,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: [
                  BlocBuilder<ScanQrBlocBloc, ScanQrBlocState>(
                    builder: (context, state) {
                      final int? id = state.scanData.device?.id;
                      final String? brand = state.scanData.device?.brand;
                      final String? model = state.scanData.device?.model;
                      final String? loc = state.scanData.device?.location;
                      final String? warranty =
                          state.scanData.device?.warrantyExpiry;
                      final int? customer =
                          state.scanData.device?.registeredByUser;
                      final String? regDate =
                          state.scanData.device?.registeredAt;

                      return state.isLoading
                          ? CircularProgressIndicator()
                          : Table(
                              columnWidths: {
                                0: FlexColumnWidth(1), // Adjusts column widths
                                1: FlexColumnWidth(1),
                              },
                              children: [
                                _buildTableRow("ID", id.toString()),
                                _buildTableRow("Brand", brand ?? "NO brand"),
                                _buildTableRow("Model", model ?? "No model"),
                                _buildTableRow(
                                    "Location", loc ?? "No location"),
                                _buildTableRow("Warranty",
                                    warranty ?? "No warranty specified"),
                                _buildTableRow(
                                    "Customer ID", customer.toString()),
                                _buildTableRow(
                                    "Date", regDate ?? "No date specified"),
                              ],
                            );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              BlocBuilder<ScanQrBlocBloc, ScanQrBlocState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return Skeleton(height: 200, width: 200);
                  }

                  final String? kimage = state.scanData.device?.qrCode;

                  if (kimage == null || kimage.isEmpty) {
                    return Container(
                      height: 200,
                      width: 200,
                      color:
                          Colors.grey[300], // Placeholder in case image is null
                      child: Center(
                        child: Text(
                          "No QR Code Image",
                          style: TextStyle(color: primaryBlack),
                        ),
                      ),
                    );
                  }

                  return Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: primaryBlack,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(kBaseURL + kimage),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              CustomMaterialButton(
                text: "UPDATE",
                onPressed: () {},
              ),
              SizedBox(
                height: 5,
              ),
              CustomMaterialButton(
                text: "GENERATE BILL",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow _buildTableRow(String label, String value) {
    return TableRow(
      decoration: BoxDecoration(),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            overflow: TextOverflow.visible,
            label,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: primaryBlue, fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            overflow: TextOverflow.visible,
            value,
            style: TextStyle(color: primaryBlue, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
