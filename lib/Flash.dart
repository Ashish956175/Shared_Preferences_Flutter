

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_shared_pref/HomePage.dart';
import 'package:new_shared_pref/LoginPage.dart';
import 'package:new_shared_pref/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FlashPage extends StatefulWidget {
  const FlashPage({super.key});

  @override
  State<FlashPage> createState() => _FlashPage();
}

class _FlashPage extends State<FlashPage> {
  bool isLogin = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkLogin();
  }

  Future<void> checkLogin() async {
    SharedPreferences sharePref = await SharedPreferences.getInstance();
    isLogin = sharePref.getBool(MyApp.loginkey) ?? false;

    Timer(Duration(seconds: 5), () {
      if (isLogin) {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>
            MyHomePage()));
      } else {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>
            Loginpage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.amberAccent,

      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("flash page", style: TextStyle(fontSize: 30),)


          ],
        ),
      ),

    );
  }
}
