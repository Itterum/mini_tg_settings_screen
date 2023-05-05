import 'package:flutter/material.dart';
import 'package:my_app_yt/models/menu_data.dart';

class MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const MenuWidgetRow({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            data.icon,
            color: Colors.white,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              data.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: Colors.grey.shade600,
          ),
        ],
      ),
    );
  }
}
