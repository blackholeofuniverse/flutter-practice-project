import 'package:flutter/material.dart';
import 'package:heheboi_app/models/catalog.model.dart';
import 'package:heheboi_app/utils/routes.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      color: Colors.black,
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, MyRoutes.productRoute);
        },
        leading: Image(image: AssetImage(item.image)),
        title: Text(item.name, style: const TextStyle(color: Colors.white)),
        subtitle: Text(item.desc, style: const TextStyle(color: Colors.grey)),
        trailing: Text(
          "₹${item.price}",
          textScaler: const TextScaler.linear(1.5),
          style: const TextStyle(
              color: Color(0xFFCCCCCC), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
