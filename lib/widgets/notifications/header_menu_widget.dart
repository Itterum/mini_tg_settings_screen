import 'package:flutter/material.dart';

class HeaderMenuWidget extends StatelessWidget {
  final String text;
  const HeaderMenuWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 5,
      ),
      child: Text(
        text.toUpperCase(),
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
