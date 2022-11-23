class item {
  final String id = "";
  final String name = "";
  final String desc = "";
  final num price = 0;
  final String color = "";
  final String image = "";

  item(
      {required String name,
      required String id,
      required String desc,
      required int price,
      required String image,
      required String color});

  final products = [
    item(
        id: "Om333",
        name: "iPhone 14 Pro",
        desc: "Apple iPhone 14th generation",
        price: 1029,
        color: "#33505a",
        image:
            "https://media.croma.com/image/upload/v1662703724/Croma%20Assets/Communication/Mobiles/Images/261934_qgssvy.png")
  ];
}
