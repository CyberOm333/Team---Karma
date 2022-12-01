import 'package:demo/core/store.dart';
import 'package:demo/models/catalog.dart';
import 'package:demo/pages/home_widget/catalog_header.dart';
import 'package:velocity_x/velocity_x.dart';

class CartMode {
  late CatalogModel _catalog;
  final List<int> _itemids = [];
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  List<Item> get items => _itemids.map((id) => _catalog.getById(id)).toList();

  // Total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // add item

  void add(Item item) {
    _itemids.add(item.id);
  }

  // remove item

  void remove(Item item) {
    _itemids.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;
  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemids.add(item.id);
  }
}
