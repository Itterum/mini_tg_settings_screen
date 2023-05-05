import 'package:flutter/material.dart';
import 'package:my_app_yt/models/menu_data.dart';

class NavBarItemWidget extends StatelessWidget {
  final MenuRowData navBarItem;

  const NavBarItemWidget({
    super.key,
    required this.navBarItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(navBarItem.icon, color: Colors.grey.shade500),
        const SizedBox(
          height: 10,
        ),
        Text(
          navBarItem.text,
          style: TextStyle(color: Colors.grey.shade500),
        ),
      ],
    );
  }
}
