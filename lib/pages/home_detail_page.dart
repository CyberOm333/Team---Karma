import 'package:demo/models/catalog.dart';
import 'package:demo/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            context.theme.buttonColor,
                          ),
                          shape: MaterialStateProperty.all(
                            StadiumBorder(),
                          )),
                      child: "Add to cart".text.xl2.make())
                  .wh(140, 50)
            ]).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Image.network(catalog.image).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: context.cardColor,
                  child: Column(
                    children: [
                      catalog.name.text.xl4
                          .color(context.accentColor)
                          .bold
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      10.heightBox,
                      "dkfjak skdjfksj kfj kjskjdfksjd skjdfk jaf;aif akj akj a;kljdf;kja ka kajfklajfkljafk jakj akjf kajf afkj akjfkla jfakljfijfiajfiojfiofj "
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p16()
                    ],
                  ).py32(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
