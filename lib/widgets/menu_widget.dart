import 'package:flutter/material.dart';
import 'package:my_app_yt/widgets/menu_widget_row.dart';
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
          children: menuData.map((data) => MenuWidgetRow(data: data)).toList(),
        ),
      ),
    );
  }
}
