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
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = !changeButton;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

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
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter usename", labelText: "Username"),
                        onChanged: (value) => setState(() {
                          name = value;
                        }),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be NULL";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter password", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be NULL";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          splashColor: Colors.purple,
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 40 : 150,
                            height: 40,

                            alignment: Alignment.center,
                            // decoration: BoxDecoration(
                            //   color: Colors.deepPurple,
                            //   shape: changeButton
                            //       ? BoxShape.circle
                            //       : BoxShape.rectangle,
                            // ),
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
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
