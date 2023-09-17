import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:SafeArea(
        child: Column(
          children: [
            SizedBox(height: 150,),
            Text("Welcome",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.fromLTRB(40.0, 40, 40,10),
              child: TextFormField(decoration: InputDecoration(labelText: "Username"),),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(40,0,40,40),
              child: TextFormField(decoration: InputDecoration(labelText: "Password"),),
            ),
            ElevatedButton(
                onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeScreen()));

            }, child: Text("Enter")),

          ],
        ),
      ) ,
    );
  }
}
