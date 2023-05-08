import 'package:flutter/material.dart';
import 'package:my_app_yt/widgets/notifications/notifications_screen.dart';
import 'package:my_app_yt/widgets/user_profile/menu_widget.dart';
import 'package:my_app_yt/models/menu_data.dart';
import 'package:my_app_yt/widgets/user_profile/nav_bar_widgets/my_navigation_bar.dart';
import 'package:my_app_yt/widgets/user_profile/user_info_widgets/user_info.dart';

class UserProfile extends StatelessWidget {
  final List<MenuRowData> menuData = [
    MenuRowData(
        Icons.bookmark, 'Saved Messages', Colors.blue, const Placeholder()),
    MenuRowData(Icons.call, 'Recent Calls', Colors.green, const Placeholder()),
    MenuRowData(Icons.devices, 'Devices', Colors.orange, const Placeholder()),
    MenuRowData(Icons.folder, 'Chat Folders', Colors.blue.shade300,
        const Placeholder()),
  ];

  final List<MenuRowData> navBarData = [
    MenuRowData(Icons.contacts_rounded, 'Contacts', Colors.grey.shade500,
        const Placeholder()),
    MenuRowData(Icons.call, 'Calls', Colors.grey.shade500, const Placeholder()),
    MenuRowData(Icons.chat, 'Chats', Colors.grey.shade500, const Placeholder()),
    MenuRowData(
        Icons.settings, 'Settings', Colors.grey.shade500, const Placeholder()),
  ];

  final List<MenuRowData> statusAndEmoji = [
    MenuRowData(Icons.emoji_emotions_outlined, 'Change Emoji Status',
        Colors.blue, const Placeholder()),
    MenuRowData(Icons.add_a_photo_outlined, 'Change Profile Photo', Colors.blue,
        const Placeholder()),
  ];

  final List<MenuRowData> premium = [
    MenuRowData(Icons.star_border_rounded, 'Telegram Premium',
        Colors.deepPurple, const Placeholder()),
  ];

  final List<MenuRowData> support = [
    MenuRowData(Icons.question_answer, 'Ask a Question', Colors.orange,
        const Placeholder()),
    MenuRowData(Icons.question_mark_rounded, 'Telegram FAQ', Colors.lightBlue,
        const Placeholder()),
    MenuRowData(Icons.lightbulb, 'Telegram Features', Colors.yellow,
        const Placeholder()),
  ];

  final List<MenuRowData> secondMenuData = [
    MenuRowData(Icons.notifications, 'Notifications and Sound', Colors.red,
        NotificationsScreen()),
    MenuRowData(Icons.privacy_tip, 'Privacy and Security', Colors.grey.shade300,
        const Placeholder()),
    MenuRowData(
        Icons.storage, 'Data and Storage', Colors.green, const Placeholder()),
    MenuRowData(
        Icons.style, 'Appearance', Colors.lightBlue, const Placeholder()),
    MenuRowData(Icons.battery_3_bar, 'Power Saving', Colors.orange,
        const Placeholder()),
    MenuRowData(Icons.language, 'Language', Colors.purple, const Placeholder()),
  ];

  UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
          child: const Icon(
            Icons.qr_code,
            color: Colors.blue,
          ),
          onTap: () {},
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Edit',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            const UserInfo(),
            const SizedBox(
              height: 20,
            ),
            MenuWidget(
              menuData: statusAndEmoji,
            ),
            const SizedBox(
              height: 20,
            ),
            MenuWidget(
              menuData: menuData,
            ),
            const SizedBox(
              height: 20,
            ),
            MenuWidget(
              menuData: secondMenuData,
            ),
            const SizedBox(
              height: 20,
            ),
            MenuWidget(
              menuData: premium,
            ),
            const SizedBox(
              height: 20,
            ),
            MenuWidget(
              menuData: support,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: MyNavigationBar(
          navBarItems: navBarData,
        ),
      ),
    );
  }
}
