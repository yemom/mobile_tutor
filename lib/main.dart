import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/login_page.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColor.background,
      ),
      home: LoginPage(),
    );
  }
}
