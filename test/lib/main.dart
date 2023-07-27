import 'package:flutter/material.dart';
import 'package:test/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //First: Constuctor
  //Second: Bulid
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: HomeScreen(),
    );
  }
}
