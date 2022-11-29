// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:demo/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:demo/models/catalog.dart';
import 'package:demo/widgets/drawer.dart';
import 'package:demo/widgets/item_widget.dart';

import 'home_widget/catalog_header.dart';
import 'home_widget/catalog_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
    // print(productsData);
  }

  Widget build(BuildContext context) {
    // final int days = 3;
    final String name = "OM";

    // final dummyList = List.generate(50, (index) => CatalogModel.items[0]); // To make multiple copies of one card
    return Scaffold(
        backgroundColor: MyTheme.OrangeColor,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  Center(
                    child:
                        CircularProgressIndicator().centered().py16().expand(),
                  )
              ],
            ),
          ),
        ));
  }
}
