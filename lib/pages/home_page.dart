import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/catalog.dart';
import 'package:flutter_ecommerce/widgets/drawer.dart';
import 'package:flutter_ecommerce/widgets/item_widget.dart';

class Homepage extends StatelessWidget {
  final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
  final int days = 30;
  final String name = "Franky Clothing";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecommerce App"),
      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                items: dummyList[index],
              );
            },
          ),
        ),
        drawer: MyDrawer(),
      );
  }
}
