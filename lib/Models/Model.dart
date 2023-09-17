import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Item.dart';

class Model extends ChangeNotifier
{
  double TotalPrice = 0;
  List <Item> PurchasedItems = [];

  AddItem (Item item)
  {
        PurchasedItems.add(item);
        print("YESSS");
        print(item.ItemName);
        TotalPrice += item.ItemPrice;
        notifyListeners();
  }
}


