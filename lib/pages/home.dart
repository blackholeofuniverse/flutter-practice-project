import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:heheboi_app/models/catalog.model.dart';
import 'package:heheboi_app/widgets/drawer.dart';
import 'package:heheboi_app/widgets/item.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

// Fetching the Data from JSON file
  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(() {});

    // setState(() {
    //   var productsData = decodedData["products"];
    //   // ignore: avoid_print
    //   print("number of items : ${productsData.length}");
    //   CatalogModel.items = List.from(productsData)
    //       .map<Item>((item) => Item.fromMap(item))
    //       .toList();
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF18181b),
      appBar: AppBar(
        title: const Text(
          "HeheBoi",
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: const SizedBox(
        width: 240,
        child: MyDrawer(),
      ),
    );
  }
}
