import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQr extends StatelessWidget {
  final MobileScannerController controller = MobileScannerController();
  ScanQr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('QR Code Scanner'),
        actions: [
          IconButton(
            onPressed: () {
              controller.toggleTorch();
            },
            icon: ValueListenableBuilder(
              valueListenable: controller,
              builder: (context, state, _) {
                return Icon(
                  state.torchState == TorchState.on
                      ? Icons.flash_on
                      : Icons.flash_off,
                  color: state.torchState == TorchState.on
                      ? Colors.yellow
                      : Colors.grey,
                );
              },
            ),
          ),
        ],
      ),
      body: MobileScanner(
        controller: controller,
        overlayBuilder: (context, constraints) {
          return Center(
            child: Container(
              width: constraints.maxWidth * 0.8,
              height: constraints.maxWidth * 0.8,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border(
                  top: BorderSide(
                      color: Colors.white,
                      width: 2,
                      strokeAlign: BorderSide.strokeAlignInside),
                  left: BorderSide(color: Colors.white, width: 2),
                  right: BorderSide(color: Colors.white, width: 2),
                  bottom: BorderSide(color: Colors.white, width: 2),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          );
        },
        onDetect: (barcodes) {
          final List<Barcode> detectbarcodes = barcodes.barcodes;
          for (final barcode in detectbarcodes) {
            log(barcode.rawValue.toString());
          }
        },
      ),
    );
  }
}
