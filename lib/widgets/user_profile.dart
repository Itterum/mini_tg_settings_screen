import 'package:flutter/material.dart';
import 'package:my_app_yt/widgets/menu_widget.dart';
import 'package:my_app_yt/models/menu_data.dart';
import 'package:my_app_yt/widgets/my_navigation_bar.dart';
import 'package:my_app_yt/widgets/user_info.dart';

class UserProfile extends StatelessWidget {
  final List<MenuRowData> menuData = [
    MenuRowData(Icons.bookmark, 'Saved Messages'),
    MenuRowData(Icons.call, 'Recent Calls'),
    MenuRowData(Icons.devices, 'Devices'),
    MenuRowData(Icons.folder, 'Chat Folders'),
  ];

  final List<MenuRowData> navBarData = [
    MenuRowData(Icons.contacts_rounded, 'Contacts'),
    MenuRowData(Icons.call, 'Calls'),
    MenuRowData(Icons.chat, 'Chats'),
    MenuRowData(Icons.settings, 'Settings'),
  ];

  final List<MenuRowData> statusAndEmoji = [
    MenuRowData(Icons.emoji_emotions, 'Change Emoji Status'),
    MenuRowData(Icons.add_a_photo_outlined, 'Change Profile Photo'),
  ];

  final List<MenuRowData> premium = [
    MenuRowData(Icons.star_border_rounded, 'Telegram Premium'),
  ];

  final List<MenuRowData> support = [
    MenuRowData(Icons.question_answer, 'Ask a Question'),
    MenuRowData(Icons.question_mark_rounded, 'Telegram FAQ'),
    MenuRowData(Icons.lightbulb, 'Telegram Features'),
  ];

  final List<MenuRowData> secondMenuData = [
    MenuRowData(Icons.notifications, 'Notifications and Sound'),
    MenuRowData(Icons.privacy_tip, 'Privacy and Security'),
    MenuRowData(Icons.storage, 'Data and Storage'),
    MenuRowData(Icons.style, 'Appearance'),
    MenuRowData(Icons.battery_3_bar, 'Power Saving'),
    MenuRowData(Icons.language, 'Language'),
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
