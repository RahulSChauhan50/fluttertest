import 'package:flutter/material.dart';
import 'package:fluttertest/pages/homepage.dart';
import 'package:fluttertest/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/login",
      routes: {"/": (context) => Home(), "/login": (context) => Login()},
    );
  }
}
