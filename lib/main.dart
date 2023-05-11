import 'package:flutter/material.dart';
import 'package:sixth/Screens/screen2.dart';
import 'package:sixth/Screens/screen5.dart';
import 'package:sixth/Screens/screen6.dart';
import 'Screens/mainscreen.dart';



void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainScreen(),
    );
  }
}
