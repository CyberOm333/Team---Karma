import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/themes.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({required this.image});
  // const CatalogImage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/image/iPhone_14_Pro_Max.png")
        .box
        .rounded
        .p8
        .color(context.canvasColor)
        .make()
        .p16()
        .w40(context);
  }
}
