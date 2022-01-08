import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Center(
            child: Container(
          child: Text("welcome to $days days of code"),
        )),
      ),
      drawer: Drawer(),
    );
  }
}
