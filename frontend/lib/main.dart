import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Ease',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      home: splash_screen(),
    );
  }
}




