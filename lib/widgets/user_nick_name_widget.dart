import 'package:flutter/material.dart';

class UserNickNameWidget extends StatelessWidget {
  const UserNickNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '@user_nick_name',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 17,
      ),
    );
  }
}
