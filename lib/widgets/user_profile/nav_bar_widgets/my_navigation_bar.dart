import 'package:flutter/material.dart';
import 'package:my_app_yt/models/menu_data.dart';
import 'package:my_app_yt/widgets/user_profile/nav_bar_widgets/nav_bar_item_widget.dart';

class MyNavigationBar extends StatelessWidget {
  final List<MenuRowData> navBarItems;

  const MyNavigationBar({
    super.key,
    required this.navBarItems,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: navBarItems
          .map((data) => NavBarItemWidget(navBarItem: data))
          .toList(),
    );
  }
}
