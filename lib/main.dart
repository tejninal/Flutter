import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/home_page.dart';
import 'package:flutter_ecommerce/pages/login_page.dart';
import 'package:flutter_ecommerce/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(EcommerceApp());
}


class EcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        primaryTextTheme: GoogleFonts.poppinsTextTheme(),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      // initialRoute: "/home",

      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes2.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
      },
    );
  }
}
