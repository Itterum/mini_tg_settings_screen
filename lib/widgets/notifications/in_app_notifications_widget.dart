import 'package:flutter/material.dart';

class InAppNotificationsWidget extends StatefulWidget {
  final String text;

  const InAppNotificationsWidget({
    super.key,
    required this.text,
  });

  @override
  State<InAppNotificationsWidget> createState() =>
      _InAppNotificationsWidgetState();
}

class _InAppNotificationsWidgetState extends State<InAppNotificationsWidget> {
  bool switchValue = true;

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
              widget.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Switch(
            value: switchValue,
            onChanged: (bool newValue) {
              setState(
                () {
                  switchValue = newValue;
                },
              );
            },
            activeColor: Colors.green,
            inactiveTrackColor: Colors.grey,
            activeTrackColor: Colors.green,
            overlayColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                return switchValue
                    ? Colors.green.withOpacity(0.2)
                    : Colors.grey.withOpacity(0.2);
              },
            ),
            thumbColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                return switchValue ? Colors.green : Colors.grey;
              },
            ),
            trackColor: WidgetStateProperty.resolveWith<Color>(
              (Set<WidgetState> states) {
                return switchValue
                    ? Colors.green.withOpacity(0.5)
                    : Colors.grey.withOpacity(0.5);
              },
            ),
          ),
        ],
      ),
    );
  }
}
