import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_shared_pref/Flash.dart';
import 'package:new_shared_pref/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HomePage.dart';


class Loginpage extends StatefulWidget {
  const Loginpage({super.key});
  @override
  State<Loginpage> createState() => _LoginPage();
}

class _LoginPage extends State<Loginpage>{
    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
        ),
        body: Center(

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Login to Contineu..", style: TextStyle(fontSize: 30),),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      label: Text("email", style: TextStyle(fontSize: 25),),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21)
                      )
                  ),

                ),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () async {
                      print("logined successfully");
                      SharedPreferences sharePref = await SharedPreferences.getInstance();
                      sharePref.setBool(MyApp.loginkey, true);

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyHomePage())
                      );
                    },
                    child: Text("login",style: TextStyle(fontSize: 23),),)

                //TextField(decoration: InputDecoration(label: Text("email")),)

              ],
            ),
          ),

        ),

      );

    }
}