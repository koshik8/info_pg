import 'package:flutter/material.dart';
import 'info_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Info Screen App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InfoScreen(),
    );
  }
}
