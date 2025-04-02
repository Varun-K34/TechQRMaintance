import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/tasks/widgets/info_row.dart';
import 'package:techqrmaintance/core/strings.dart';

class CompletionDetailes extends StatelessWidget {
  final String? notes;
  final List<int>? partsUsed;
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
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Completion Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            InfoRowWidget(
              label: 'Notes:',
              value: notes ?? "no notes",
              icon: Icons.note,
            ),
            InfoRowWidget(
              label: 'Parts Used:',
              value: partsUsed?.join(', ') ?? "no parts used",
              icon: Icons.hardware,
            ),
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
      ),
    );
  }
}
