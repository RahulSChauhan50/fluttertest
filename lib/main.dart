import 'package:flutter/material.dart';
import 'package:fluttertest/Utils/Routes.dart';
import 'package:fluttertest/pages/homepage.dart';
import 'package:fluttertest/pages/login_page.dart';
import 'package:fluttertest/widgets/theme.dart';
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
      darkTheme: MyTheme.darkTheme(context),
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => Login(),
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.loginRoute: (context) => Login()
      },
    );
  }
}
