import 'package:flutter/material.dart';

class InAppNotificationsWidget extends StatelessWidget {
  final String text;
  const InAppNotificationsWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 0,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const Icon(
            Icons.toggle_on,
            color: Colors.green,
            size: 42,
          ),
        ],
      ),
    );
  }
}
