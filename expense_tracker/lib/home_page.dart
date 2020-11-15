import 'package:expense_tracker/transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final List<Transaction> transactions = [
    Transaction(id: 1, title: "New Shoe", amount: 69.8, date: DateTime.now()),
    Transaction(id: 2, title: "Paint Ball", amount: 78.4, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Items Name'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(hintText: 'Amount charged'),
              keyboardType: TextInputType.number,
              controller: amountController,
            ),
            FlatButton(
                onPressed: () {
                  setState(() {
                    transactions.add(Transaction(
                        id: 3,
                        title: titleController.text,
                        amount: double.parse(amountController.text),
                        date: DateTime.now()));
                    titleController.clear();
                    amountController.clear();
                  });
                },
                child: Text('Add Transaction')),
            Column(
              children: transactions.map((transactions) {
                return Card(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.all(4.0),
                      child: Text('\$${transactions.amount}'),
                      decoration: BoxDecoration(border: Border.all()),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transactions.title,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(DateFormat.yMMMd().format(transactions.date))
                      ],
                    ),
                  ],
                ));
              }).toList(),
            ),
            IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    transactions.removeLast();
                  });
                })
          ],
        ),
      ),
    );
  }
}
