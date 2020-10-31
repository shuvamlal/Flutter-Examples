import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Text("User Name"),
            decoration: BoxDecoration(color: Colors.grey),
          ),
          ListTile(
            title: Text("Page 1"),
          ),
          ListTile(
            title: Text("Page 2"),
          ),
        ],
      ),
    );
  }
}
