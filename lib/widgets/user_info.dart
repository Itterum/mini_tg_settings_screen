import 'package:flutter/material.dart';
import 'package:my_app_yt/widgets/avatar_widget.dart';
import 'package:my_app_yt/widgets/user_name_widget.dart';
import 'package:my_app_yt/widgets/user_nick_name_widget.dart';
import 'package:my_app_yt/widgets/user_phone_widget.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: const [
          SizedBox(height: 50),
          AvatarWidget(),
          SizedBox(height: 20),
          UserNameWidget(),
          SizedBox(height: 10),
          PhoneAndNickNameWidget(),
        ],
      ),
    );
  }
}

class PhoneAndNickNameWidget extends StatelessWidget {
  const PhoneAndNickNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        UserPhoneWidget(),
        SizedBox(width: 10),
        Text(
          '-',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(width: 10),
        UserNickNameWidget(),
      ],
    );
  }
}
