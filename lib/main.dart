import 'package:flutter/material.dart';
import 'package:harry_potter/home_page.dart';

void main() {
  runApp(MyMaterialApp());
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
    );
  }
}
