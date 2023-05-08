import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        image: const DecorationImage(
          image: AssetImage('assets/avatar_placeholder.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      width: 150,
      height: 150,
    );
  }
}
