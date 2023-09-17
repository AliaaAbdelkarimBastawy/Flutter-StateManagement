import 'package:flutter/material.dart';
import 'package:flutter_workshop_task7/Models/Model.dart';
import 'package:flutter_workshop_task7/Screens/CartScreen.dart';
import 'package:provider/provider.dart';

import '../Models/Item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<Item> items = [
    Item(
      ItemName: "Recursion",
      ItemPrice: 20,
      ItemColor: Colors.purple,
    ),
    Item(
      ItemName: "Sprint",
      ItemPrice: 20,
      ItemColor: Colors.red,
    ),
    Item(
      ItemName: "Scope",
      ItemPrice: 20,
      ItemColor: Colors.blueAccent,
    ),
    Item(
      ItemName: "Closure",
      ItemPrice: 20,
      ItemColor: Colors.green,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartScreen()));
              },
              icon: Icon(Icons.shopping_cart)),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return HomeItem(item: items[index],);
        },
      ),
    );
  }
}

class HomeItem extends StatelessWidget {
  Item item;

  HomeItem(
      {Key? key,
      required this.item,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Container(
          width: 50,
          height: 50,
          color: item.ItemColor,
        ),
        title: Text(item.ItemName),
        trailing: Consumer<Model>(builder: (BuildContext context, Model value, Widget? child) {
          return TextButton(
          onPressed: () {
            value.AddItem(item);
          },
          child: Text("ADD"),);}),
    ),
    );
  }
}


