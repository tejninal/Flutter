import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "Franky Clothing";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecommerce App"),
      ),
        body: Center(
          child: Container(
            child: Text("Welcome To $days days of $name")
          ),
        ),
        drawer: Drawer(),
      );
  }
}
