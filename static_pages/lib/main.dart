import 'package:flutter/material.dart';
import 'package:static_pages/home_page.dart';

import 'app_drawer.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Static Page"),
        ),
        body: HomePage(),
      ),
    );
  }
}
