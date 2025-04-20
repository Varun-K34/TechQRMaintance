import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/tasks/widgets/info_row.dart';
import 'package:techqrmaintance/core/colors.dart';
import 'package:techqrmaintance/core/strings.dart';

class CompletionDetailes extends StatelessWidget {
  final String? notes;
  final List<String>? partsUsed;
  final String? completionPhotoUrl;
  const CompletionDetailes({
    super.key,
    required this.notes,
    required this.partsUsed,
    required this.completionPhotoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      color: primaryWhite,
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
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
                  'Completion Details',
                  style: TextStyle(
                    fontSize: 18,
                    color: primaryWhite,
                    fontWeight: FontWeight.bold,
                  ),
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
                  label: 'Notes:',
                  value: notes ?? "no notes",
                  icon: Icons.note,
                ),
                Divider(),
                InfoRowWidget(
                  label: 'Parts Used:',
                  value: partsUsed?.join(', ') ?? "no parts used",
                  icon: Icons.hardware,
                ),
                Divider(),
                const SizedBox(height: 8),
                if (completionPhotoUrl != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Completion Photo:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Center(
                        child: Container(
                          constraints: const BoxConstraints(maxHeight: 200),
                          child: Image.network(
                            kBaseURL + completionPhotoUrl!,
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: double.infinity,
                                height: 150,
                                color: Colors.grey[300],
                                child: const Center(
                                  child: Text('Unable to load image'),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
