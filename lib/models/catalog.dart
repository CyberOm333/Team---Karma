class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 14 Pro",
        desc: "Apple iPhone 14th generation",
        price: 1029,
        color: "#33505a",
        image:
            "https://media.croma.com/image/upload/v1662703724/Croma%20Assets/Communication/Mobiles/Images/261934_qgssvy.png")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.name,
      required this.id,
      required this.desc,
      required this.price,
      required this.image,
      required this.color});
}
