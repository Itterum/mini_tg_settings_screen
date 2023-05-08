import 'package:flutter/material.dart';

class UserNameWidget extends StatelessWidget {
  const UserNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'User Name',
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
