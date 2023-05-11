import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sixth/Screens/screen2.dart';
import 'package:sixth/Screens/screen3.dart';
import 'package:sixth/Screens/screen4.dart';
import 'package:sixth/Screens/screen5.dart';
import 'package:sixth/Screens/screen6.dart';
import 'package:sixth/Screens/screenone.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ScreenOne(),
                    ),
                  );
                },
                child: Text('Screen 1')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ScreenTwo()));
                },
                child: Text('Screen 2')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ScreenThree()));
                },
                child: Text('Screen 3')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ScreenFOur()));
                },
                child: Text('Screen 4')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ScreenFive()));
                },
                child: Text('Screen 5')),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ScreenSix()));
                },
                child: Text('Screen 6')),
          ],
        ),
      ),
    );
  }
}
