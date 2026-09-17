import 'package:flutter/material.dart';
import 'package:new_shared_pref/Flash.dart';
//import 'Flash.dart';
import 'LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String loginkey = "isLogin";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),

      ),
      debugShowCheckedModeBanner: false,
      home: FlashPage(),
    );
  }
}

