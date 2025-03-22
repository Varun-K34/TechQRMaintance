import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/tasks/widgets/info_row.dart';

class MainInfo extends StatelessWidget {
  final String? jobType;
  final String? jobDescription;
  final List<String>? jobIssue;
  const MainInfo(
      {super.key,
      required this.jobType,
      required this.jobDescription,
      required this.jobIssue});

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
              'Task Information',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            InfoRowWidget(
              label: 'Job Type:',
              value: jobType ?? "no job type",
              icon: Icons.work,
            ),
            InfoRowWidget(
              label: 'Job Issues:',
              value: jobIssue?.join(', ') ?? "no job issues",
              icon: Icons.warning_amber,
            ),
            InfoRowWidget(
              label: 'Job Description:',
              value: jobDescription ?? "no job description",
              icon: Icons.description,
            ),
          ],
        ),
      ),
    );
  }
}
