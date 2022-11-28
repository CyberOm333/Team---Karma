import 'package:demo/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.yellow,  // For color of entire card
      // shape: StadiumBorder(),  // For changing the border of card
      child: ListTile(
          onTap: () {
            print("${item.name} pressed");
          },
          leading: Image.asset("assets/image/Ipad_2022.jpg"),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text("\$${item.price}",
              textScaleFactor: 1.5,
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ))),
    );
  }
}
