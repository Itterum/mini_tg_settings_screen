import 'package:flutter/material.dart';
import 'package:my_app_yt/widgets/user_profile/user_profile.dart';
// import 'package:my_app_yt/widgets/notifications/notifications_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserProfile(),
    );
  }
}
