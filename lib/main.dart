import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/home_page.dart';
import 'package:flutter_ecommerce/pages/login_page.dart';
import 'package:flutter_ecommerce/utils/routes.dart';
import 'package:flutter_ecommerce/widgets/themes.dart';

void main() {
  runApp(EcommerceApp());
}


class EcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes2.homeRoute,

      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes2.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
      },
    );
  }
}
