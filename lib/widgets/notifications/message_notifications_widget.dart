import 'package:flutter/material.dart';
import 'package:my_app_yt/models/notification_data.dart';

class MessageNotificationsWidget extends StatelessWidget {
  final NotificationRowData data;
  const MessageNotificationsWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 0,
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(
              data.icon,
              color: data.color,
            ),
            Expanded(
              child: ListTile(
                title: Text(
                  data.title,
                  style: const TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  data.subTitle,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.grey.shade600,
            ),
          ],
        ),
      ),
    );
  }
}
