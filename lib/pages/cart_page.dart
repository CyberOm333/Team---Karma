import 'package:demo/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  // const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "              Cart"
            .text
            .color(Colors.black)
            .bold
            .xl3
            .center
            .make(),
      ),
      body: Column(
        children: [
          _cartList().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  // const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            "\$9999".text.xl5.color(context.theme.colorScheme.secondary).make(),
            30.widthBox,
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(context.theme.buttonColor)),
              child: "Buy".text.white.make(),
            ).w32(context)
          ],
        ));
  }
}

class _cartList extends StatefulWidget {
  const _cartList({super.key});

  @override
  State<_cartList> createState() => _cartListState();
}

class _cartListState extends State<_cartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ListTile(
            leading: Icon(Icons.done),
            trailing: IconButton(
              icon: Icon(Icons.remove_circle_outline),
              onPressed: () {},
            ),
            title: "Item 1".text.make()));
  }
}
