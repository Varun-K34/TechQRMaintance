import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:techqrmaintance/Screens/tasks/widgets/time_line_info.dart';
import 'package:techqrmaintance/core/colors.dart';

class BuildTimelineMain extends StatelessWidget {
  final DateTime? created;
  final DateTime? started;
  final DateTime? completed;
  final String? preferred;
  final String? perferstarttime;
  const BuildTimelineMain({
    super.key,
    required this.created,
    required this.started,
    this.completed,
    required this.preferred,
    this.perferstarttime,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('MMM d, yyyy');
    final timeFormat = DateFormat('h:mm a');
    final createdDate = created != null
        ? '${dateFormat.format(created!)} at ${timeFormat.format(created!)}'
        : 'N/A';
    final startedDate = started != null
        ? '${dateFormat.format(started!)} at ${timeFormat.format(started!)}'
        : 'N/A';
    final completedDate = completed != null
        ? '${dateFormat.format(completed!)} at ${timeFormat.format(completed!)}'
        : 'N/A';
    final preferredDate =
        preferred != null ? '$preferred at $perferstarttime' : 'N/A';
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
            child: Center(
              child: const Text(
                'Timeline',
                style: TextStyle(
                  fontSize: 18,
                  color: primaryWhite,
                  fontWeight: FontWeight.bold,
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
                Timelineinfo(
                  label: 'Created:',
                  value: createdDate,
                  icon: Icons.create,
                ),
                const SizedBox(height: 4),
                startedDate == 'N/A'
                    ? SizedBox.shrink()
                    : Timelineinfo(
                        label: 'Started:',
                        value: startedDate,
                        icon: Icons.play_arrow,
                      ),
                const SizedBox(height: 4),
                completedDate == 'N/A'
                    ? SizedBox.shrink()
                    : Timelineinfo(
                        label: 'Completed:',
                        value: completedDate,
                        icon: Icons.check_circle,
                      ),
                const SizedBox(height: 4),
                Timelineinfo(
                  label: 'Preferred:',
                  value: preferredDate == 'N/A' ? "No Data" : preferredDate,
                  icon: Icons.access_time,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
