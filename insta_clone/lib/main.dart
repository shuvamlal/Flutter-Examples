import 'package:flutter/material.dart';
import 'package:insta_clone/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryIconTheme: IconThemeData(color: Colors.white),
        primaryTextTheme: TextTheme(headline4: TextStyle(color: Colors.white)),
        textTheme: TextTheme(headline4: TextStyle(color: Colors.white)),
      ),
      home: HomePage(),
    );
  }
}
