import 'package:flutter/material.dart';
import 'package:fluttertest/pages/homepage.dart';
import 'package:fluttertest/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  bringVegetable({int rupees = 10}) {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    bringVegetable(rupees: 20);
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes: {"/": (context) => Home(), "/login": (context) => Login()},
    );
  }
}
