// main.dart

import 'package:flutter/material.dart';
import 'package:assignment3/home.dart'; // Import the HomeScreen file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(), // Reference HomeScreen here
    );
  }
}
