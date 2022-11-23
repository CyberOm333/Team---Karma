import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Image.asset("assests/images/ProphilePic.png");
    return Drawer(
      child: Container(
        color: Colors.white24,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.orange),
                accountName: Text("Om Chaudhari", textScaleFactor: 1.4),
                accountEmail: Text("omchaudhari1292003@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assests/images/ProphilePic.png"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.grey),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.grey),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.grey),
              title: Text(
                "Email me",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
