import 'package:flutter/material.dart';

class InfoRowWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Widget? actionButton;
  const InfoRowWidget(
      {super.key,
      required this.icon,
      required this.label,
      required this.value,
      this.actionButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 18, color: Colors.blue[700]),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Text(value),
              ],
            ),
          ),
          if (actionButton != null) actionButton!,
        ],
      ),
    );
  }
}
