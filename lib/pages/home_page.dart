// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:demo/core/store.dart';
import 'package:demo/utils/routes.dart';
import 'package:demo/widgets/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:demo/models/catalog.dart';
import 'package:demo/widgets/drawer.dart';
import 'package:demo/widgets/item_widget.dart';

import 'home_widget/catalog_header.dart';
import 'home_widget/catalog_list.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final url = "";
  void initState() {
    super.initState();
    // ignore: todo
    // TODO: implement initState
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
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

  @override
  Widget build(BuildContext context) {
    // final int days = 3;
    // final String name = "OM";

    // final dummyList = List.generate(50, (index) => CatalogModel.items[0]); // To make multiple copies of one card

    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
        backgroundColor: context.canvasColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
          // ignore: deprecated_member_use
          backgroundColor: context.theme.buttonColor,
          child: const Icon(CupertinoIcons.cart, color: Colors.white),
        )
        // .badge(
        //     color: Vx.red400,
        //     size: 22,
        //     count: _cart.items.length,
        //     textStyle: TextStyle(
        //       color: Colors.black,
        //       fontWeight: FontWeight.bold,
        //     )),
        ,
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  Center(
                    child: const CircularProgressIndicator()
                        .centered()
                        .py16()
                        .expand(),
                  )
              ],
            ),
          ),
        ));
  }
}
