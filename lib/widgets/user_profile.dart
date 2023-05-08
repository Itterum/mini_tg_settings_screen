import 'package:flutter/material.dart';
import 'package:my_app_yt/widgets/menu_widget.dart';
import 'package:my_app_yt/models/menu_data.dart';
import 'package:my_app_yt/widgets/my_navigation_bar.dart';
import 'package:my_app_yt/widgets/user_info.dart';

class UserProfile extends StatelessWidget {
  final List<MenuRowData> menuData = [
    MenuRowData(Icons.bookmark, 'Saved Messages', Colors.blue),
    MenuRowData(Icons.call, 'Recent Calls', Colors.green),
    MenuRowData(Icons.devices, 'Devices', Colors.orange),
    MenuRowData(Icons.folder, 'Chat Folders', Colors.blue.shade300),
  ];

  final List<MenuRowData> navBarData = [
    MenuRowData(Icons.contacts_rounded, 'Contacts', Colors.grey.shade500),
    MenuRowData(Icons.call, 'Calls', Colors.grey.shade500),
    MenuRowData(Icons.chat, 'Chats', Colors.grey.shade500),
    MenuRowData(Icons.settings, 'Settings', Colors.grey.shade500),
  ];

  final List<MenuRowData> statusAndEmoji = [
    MenuRowData(Icons.emoji_emotions, 'Change Emoji Status', Colors.blue),
    MenuRowData(Icons.add_a_photo_outlined, 'Change Profile Photo', Colors.blue),
  ];

  final List<MenuRowData> premium = [
    MenuRowData(Icons.star_border_rounded, 'Telegram Premium', Colors.deepPurple),
  ];

  final List<MenuRowData> support = [
    MenuRowData(Icons.question_answer, 'Ask a Question', Colors.orange),
    MenuRowData(Icons.question_mark_rounded, 'Telegram FAQ', Colors.lightBlue),
    MenuRowData(Icons.lightbulb, 'Telegram Features', Colors.yellow),
  ];

  final List<MenuRowData> secondMenuData = [
    MenuRowData(Icons.notifications, 'Notifications and Sound', Colors.red),
    MenuRowData(Icons.privacy_tip, 'Privacy and Security', Colors.grey.shade300),
    MenuRowData(Icons.storage, 'Data and Storage', Colors.green),
    MenuRowData(Icons.style, 'Appearance', Colors.lightBlue),
    MenuRowData(Icons.battery_3_bar, 'Power Saving', Colors.orange),
    MenuRowData(Icons.language, 'Language', Colors.purple),
  ];

  UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
