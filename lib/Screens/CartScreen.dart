import 'package:flutter/material.dart';
import 'package:flutter_workshop_task7/Screens/HomeScreen.dart';
import 'package:provider/provider.dart';

import '../Models/Model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        leading: GestureDetector(onTap:()
            {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              height: 340,
              child: Consumer<Model>(builder: (BuildContext context, Model value, Widget? child) {
                return ListView.builder(
                  itemCount: value.PurchasedItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return CartItem( CartItemText: value.PurchasedItems[index].ItemName,);
                    },
                );
              }
            ),
          ),
          ),
          Container(
            width: 500,
            height: 3,
            color: Colors.black,
          ),
          Expanded(
            child: Consumer<Model>(builder: (BuildContext context, Model value, Widget? child)
    {
      return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("${value.TotalPrice}"),
    SizedBox(width: 15,),
    ElevatedButton(onPressed: () {}, child: Text("Buy"))],);
    }
    )

      ),
    ],
    ),
    );
  }
}

class CartItem extends StatelessWidget {
  String CartItemText;
  CartItem({Key? key, required this.CartItemText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 10,
        ),
        SizedBox(
          width: 10,
        ),
        Text(CartItemText)
      ],
    );
  }
}


