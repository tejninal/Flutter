import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Items items;

  const ItemWidget({Key? key, required this.items}) 
  : assert(items !=null), 
  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${items.name} pressed");
        },
        leading: Image.network(items.image),
      title: Text(items.name),
      subtitle: Text(items.desc),
      trailing: Text(
        "\$${items.price}",
        textScaleFactor: 1.5,
        style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
      ),
      ),
    );
  }
}
