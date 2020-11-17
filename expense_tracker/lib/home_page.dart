import 'package:flutter/material.dart';
import 'models/transactions.dart';
import 'widgets/input_transaction.dart';
import 'widgets/transactions_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Transaction> _userTransactions = [
    Transaction(id: 1, title: "New Shoe", amount: 69.8, date: DateTime.now()),
    Transaction(id: 2, title: "Paint Ball", amount: 78.4, date: DateTime.now())
  ];

  void _addTransactions(String txTitle, double txAmount) {
    final val = Transaction(
        id: 3, title: txTitle, amount: txAmount, date: DateTime.now());

    setState(() {
      _userTransactions.add(val);
    });
  }

  void _startAddNewTransactions(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: InputTransaction(_addTransactions),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Tracker"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startAddNewTransactions(context),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: TransactionsList(_userTransactions),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _startAddNewTransactions(context)),
    );
  }
}
