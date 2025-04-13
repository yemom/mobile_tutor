import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  const UserAvatar({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Image.asset(
        'assets/temp/beryl.chung%40mediamonks.com.jpg',
        width: size,
        height: size,
      ),
    );
  }
}
