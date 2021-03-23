import 'package:flutter/material.dart';
import 'package:portfolioweb/screens/home_screen.dart';
import 'package:portfolioweb/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData(context),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
