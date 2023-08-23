//import 'package:dogs/deep_tree.dart';
import 'package:dogs/e_commerce_screen_before.dart';
import 'package:flutter/material.dart';
//import 'profile_screen.dart';
//import 'flex_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: ECommerceScreen(),
    );
  }
}

class StaticApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch:  Colors.green
      ),
      home: ECommerceScreen(),
    );
  }
}

