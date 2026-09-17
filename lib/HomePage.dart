

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_shared_pref/LoginPage.dart';
import 'package:new_shared_pref/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.black12,

      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is the home page", style: TextStyle(fontSize: 30),),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: ()async{
                  SharedPreferences shared = await SharedPreferences.getInstance();
                  shared.setBool(MyApp.loginkey, false);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage()));
                }, 
                child: Text("logout",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
            )



          ],
        ),
      ),

    );
  }
}
