import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: DrawerHeader(
          padding: const EdgeInsets.all(0),
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1524844048540-48a73fc4b2ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                  ),
                  accountName: Text("Shuvam"),
                  accountEmail: Text("shuvamkumar71@gmail.com")),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Shuvam"),
                subtitle: Text("Developer"),
                trailing: Icon(Icons.edit),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                subtitle: Text("shuvamkumar71@gmail.com"),
                trailing: Icon(Icons.edit),
                onTap: () {},
              )
            ],
          )),
    );
  }
}
