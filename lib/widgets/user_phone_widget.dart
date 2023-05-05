import 'package:flutter/material.dart';

class UserPhoneWidget extends StatelessWidget {
  const UserPhoneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+777 77 777 777',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
  }
}
