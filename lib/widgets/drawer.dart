import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("person"),
                  accountEmail: Text("aefavl.com"),
                  currentAccountPicture: CircleAvatar(
                    child: Image.network(
                        "https://cdn3.iconfinder.com/data/icons/vector-icons-6/96/256-1024.png"),
                  ),
                )),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail),
              title: Text("Mail"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text("Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
