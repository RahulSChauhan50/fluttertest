import 'package:flutter/material.dart';
import 'package:fluttertest/widgets/drawer.dart';

class Home extends StatelessWidget {
  int days = 30;
  final String name = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Center(
            child: Container(
          child: Text("welcome to $days days of code $name"),
        )),
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
    );
  }
}
