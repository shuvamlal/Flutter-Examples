import 'package:flutter/material.dart';
import 'package:static_pages/home_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Static Page"),
        ),
        body: HomePage(),
      ),
    );
  }
}
