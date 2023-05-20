import 'package:flutter/material.dart';
import 'package:my_app_yt/widgets/user_profile/menu_widget_row.dart';
import 'package:my_app_yt/models/menu_data.dart';

class MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuData;

  const MenuWidget({Key? key, required this.menuData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade800,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
          ),
        ),
        child: Column(
          children: menuData.asMap().entries.map((entry) {
            final index = entry.key;
            final data = entry.value;
            final isLastItem = index == menuData.length - 1;
            return Column(
              children: [
                MenuWidgetRow(data: data),
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
    );
  }
}
