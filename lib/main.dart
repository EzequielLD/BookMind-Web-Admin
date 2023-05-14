import 'package:bookmind_web_admin/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookMind Web Admin',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
