// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:velocity_x/velocity_x.dart';

import 'package:demo/models/cart.dart';
import 'package:demo/models/catalog.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartMode cart;
  MyStore() {
    catalog = CatalogModel();
    cart = CartMode();
    cart.catalog = catalog;
  }
}
