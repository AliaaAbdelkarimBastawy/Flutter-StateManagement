
import 'package:flutter/material.dart';
import 'package:flutter_workshop_task7/Models/Model.dart';
import 'package:flutter_workshop_task7/Screens/CartScreen.dart';
import 'package:flutter_workshop_task7/Screens/HomeScreen.dart';
import 'package:flutter_workshop_task7/Screens/LoginScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Model(), child:MaterialApp(home: LoginScreen(), debugShowCheckedModeBanner: false,)
      ,)
  );
}

