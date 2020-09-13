import 'package:awesome/pages/home_page.dart';
import 'package:awesome/pages/login.dart';
import 'package:awesome/utils/constants.dart';
import "package:flutter/material.dart";
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Constants.prefs.getBool("LoggedIn")==true?HomePage(): MyLogin(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        MyLogin.routeName: (context) => MyLogin(),
        HomePage.routeName: (context) => HomePage()
      },
    );
  }
}
