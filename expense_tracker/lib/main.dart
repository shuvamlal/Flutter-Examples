import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  final Future<Database> database = openDatabase(
    join(await getDatabasesPath(), 'transactions_database.db'),
    onCreate: (db, version) {
      return db.execute(
          "CREATE TABLE transactions_ls(id INTEGER PRIMARY KEY, title TEXT, amount REAL, date TEXT)");
    },
    version: 1,
  );
  
  runApp(MyApp(database));
}

class MyApp extends StatelessWidget {
  final Future<Database> myDatabase;
  MyApp(this.myDatabase);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(myDatabase),
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.amberAccent,
          fontFamily: 'OpenSans',
          textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              button: TextStyle(color: Colors.white)),
          appBarTheme: AppBarTheme(
              textTheme: ThemeData.light().textTheme.copyWith(
                  headline6:
                      TextStyle(fontFamily: 'Quicksand', fontSize: 20)))),
    );
  }
}