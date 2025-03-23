import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:techqrmaintance/Screens/tasks/widgets/time_line_info.dart';

class BuildTimelineMain extends StatelessWidget {
  final DateTime? created;
  final DateTime? started;
  final DateTime? completed;
  final DateTime? preferred;
  const BuildTimelineMain({
    super.key,
    required this.created,
    required this.started,
    this.completed,
    required this.preferred,
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
    final preferredDate = preferred != null
        ? '${dateFormat.format(preferred!)} at ${timeFormat.format(preferred!)}'
        : 'N/A';
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Timeline',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
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
              value: preferredDate,
              icon: Icons.access_time,
            ),
          ],
        ),
      ),
    );
  }
}
