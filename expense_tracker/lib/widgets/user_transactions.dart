import 'package:expense_tracker/widgets/input_transaction.dart';
import 'package:expense_tracker/models/transactions.dart';
import 'package:expense_tracker/widgets/transactions_list.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final List<Transaction> _userTransactions = [
    Transaction(id: 1, title: "New Shoe", amount: 69.8, date: DateTime.now()),
    Transaction(id: 2, title: "Paint Ball", amount: 78.4, date: DateTime.now())
  ];

  void addTransactions(String txTitle, double txAmount) {
    final val = Transaction(
        id: 3, title: txTitle, amount: txAmount, date: DateTime.now());

    setState(() {
      _userTransactions.add(val);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InputTransaction(addTransactions),
          TransactionsList(_userTransactions),
        ],
      ),
    );
  }
}
