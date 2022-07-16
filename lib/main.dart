import 'package:flutter/material.dart';
import 'package:health/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Health App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
