import 'dart:html';

import "package:flutter/material.dart";
import 'package:fluttertest/Utils/Routes.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/index.jpg",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Welcome" + name,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter usename", labelText: "Username"),
                      onChanged: (value) => setState(() {
                        name = value;
                      }),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () => setState(() {
                        changeButton = !changeButton;
                      }),
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 110 : 150,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          shape: changeButton
                              ? BoxShape.circle
                              : BoxShape.rectangle,
                          //borderRadius: BorderRadius.circular(8)),
                        ),
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: Size(150, 40),
                    //   ),
                    // ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
