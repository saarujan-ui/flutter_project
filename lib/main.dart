import 'package:flutter/material.dart';
import 'package:frontend_part_2/Pages/about_page.dart';
import 'package:frontend_part_2/Pages/conversation_branch_page.dart';
import 'package:frontend_part_2/Pages/help_page.dart';
import 'package:frontend_part_2/Pages/home_page.dart';
import 'package:frontend_part_2/Pages/progress_tracking_page.dart';
import 'package:frontend_part_2/Pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
