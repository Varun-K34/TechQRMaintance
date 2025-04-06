import 'package:flutter/material.dart';
import 'package:techqrmaintance/Screens/tasks/widgets/info_row.dart';
import 'package:techqrmaintance/core/colors.dart';

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
            child: const Center(
              child: Text(
                'Task Information',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: primaryWhite,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                InfoRowWidget(
                  label: 'Job Type:',
                  value: jobType ?? "no job type",
                  icon: Icons.work,
                ),
                Divider(),
                InfoRowWidget(
                  label: 'Job Issues:',
                  value: jobIssue?.join(', ') ?? "no job issues",
                  icon: Icons.warning_amber,
                ),
                Divider(),
                InfoRowWidget(
                  label: 'Job Description:',
                  value: jobDescription ?? "no job description",
                  icon: Icons.description,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
