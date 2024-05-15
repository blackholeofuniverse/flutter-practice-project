class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "Iphone 14 pro",
        desc: "Apple Iphone 14th generation",
        price: "80,000",
        color: "#1c1c1c",
        image: 'assets/images/iPhone.png'),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
  toMap() => {
    "id": id,
    "name": name,
    "desc": desc,
    "price": price,
    "color": color,
    "image": image
  };
}


