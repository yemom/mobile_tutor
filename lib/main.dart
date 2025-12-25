import 'package:flutter/material.dart';
import 'package:myfirst_flutter_project/config/app_route.dart';
import 'package:myfirst_flutter_project/provider/app_repo.dart';
import 'package:myfirst_flutter_project/style/app_color.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<AppRepo>(
    create: (context) => AppRepo(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColor.background,
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoute.login,
      routes: AppRoute.pages,
    );
  }
}
