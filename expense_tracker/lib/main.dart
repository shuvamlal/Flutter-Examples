import 'package:expense_tracker/widgets/user_transactions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expense Tracker"),
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: UserTransactions(),
        ),
      ),
    );
  }
}
