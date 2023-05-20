import 'package:flutter/material.dart';
import 'package:my_app_yt/models/notification_data.dart';
import 'package:my_app_yt/widgets/notifications/header_menu_widget.dart';
import 'package:my_app_yt/widgets/notifications/help_info_widget.dart';
import 'package:my_app_yt/widgets/notifications/in_app_notifications_widget.dart';
import 'package:my_app_yt/widgets/notifications/message_notifications_widget.dart';

class NotificationsScreen extends StatelessWidget {
  final List<NotificationRowData> listData = [
    NotificationRowData(Icons.person, 'Private Chats', '3 exceptions',
        Colors.blue, const Placeholder()),
    NotificationRowData(Icons.groups, 'Group Chats', '5 exceptions',
        Colors.green, const Placeholder()),
    NotificationRowData(Icons.speaker_group, 'Channels', '51 exceptions',
        Colors.orange, const Placeholder()),
  ];

  NotificationsScreen({Key? key}) : super(key: key);

  final BoxDecoration containerStyle = BoxDecoration(
    color: Colors.grey.shade800,
    borderRadius: BorderRadius.circular(10),
    border: Border.all(
      width: 2,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
          child: const Icon(
            Icons.chevron_left,
            color: Colors.blue,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text('Notifications'),
      ),
      backgroundColor: Colors.black,
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const HeaderMenuWidget(text: 'message notifications'),
            Container(
              decoration: containerStyle,
              child: Column(
                children: listData.asMap().entries.map((entry) {
                  final index = entry.key;
                  final data = entry.value;
                  final isLastItem = index == listData.length - 1;
                  return Column(
                    children: [
                      MessageNotificationsWidget(data: data),
                      if (!isLastItem)
                        Container(
                          height: 1,
                          margin: const EdgeInsets.only(left: 55),
                          color: Colors.grey.shade600,
                        ),
                    ],
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const HeaderMenuWidget(text: 'in-app notifications'),
            Container(
              decoration: containerStyle,
              child: Column(
                children: [
                  const InAppNotificationsWidget(text: 'In-App Sounds'),
                  Container(
                    height: 1,
                    margin: const EdgeInsets.only(left: 15),
                    color: Colors.grey.shade600,
                  ),
                  const InAppNotificationsWidget(text: 'In-App Vibrate'),
                  Container(
                    height: 1,
                    margin: const EdgeInsets.only(left: 15),
                    color: Colors.grey.shade600,
                  ),
                  const InAppNotificationsWidget(text: 'In-App Preview'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: containerStyle,
              child: Column(
                children: const [
                  InAppNotificationsWidget(text: 'Names on Lock Screen'),
                ],
              ),
            ),
            const HelpInfoWidget(
              text:
                  'Display names in notifications when the device is locked. To Disable, make sure that "Show Previews" is also set to "When Unlocked" or "Never".',
            ),
            const SizedBox(
              height: 20,
            ),
            const HeaderMenuWidget(text: 'badge counter'),
            Container(
              decoration: containerStyle,
              child: Column(
                children: [
                  const InAppNotificationsWidget(text: 'Include Channels'),
                  Container(
                    height: 1,
                    margin: const EdgeInsets.only(left: 15),
                    color: Colors.grey.shade600,
                  ),
                  const InAppNotificationsWidget(text: 'Count Unread Messages'),
                ],
              ),
            ),
            const HelpInfoWidget(
                text:
                    'Switch off to show the number of unread chats instead of messages.'),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: containerStyle,
              child: Column(
                children: const [
                  InAppNotificationsWidget(text: 'New Contacts'),
                ],
              ),
            ),
            const HelpInfoWidget(
                text:
                    'Receive push notifications when one of your contacts becomes available on Telegram.'),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: containerStyle,
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Text(
                  'Reset All Notifications',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            const HelpInfoWidget(
                text:
                    'Undo all custom notification settings for your contacts, groups and channels.'),
          ],
        ),
      ),
    );
  }
}
