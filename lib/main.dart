import 'package:flutter/material.dart';
import 'package:ui_test_app/view/bottom_navigation_bar/bottom_navigation_bar.dart';
 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNaviBar(),
    );
  }
}
