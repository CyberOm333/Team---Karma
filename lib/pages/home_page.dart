import 'package:demo/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final int days = 3;
    final String name = "Om Chaudhari";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome To Flutter ! by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
