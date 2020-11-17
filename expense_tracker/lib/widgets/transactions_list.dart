import 'package:expense_tracker/models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionsList extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final List<Transaction> transactions;
  TransactionsList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              elevation: 2.0,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 8.0)),
                  Container(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                        '\$${transactions[index].amount.toStringAsFixed(2)}'),
                    decoration: BoxDecoration(border: Border.all()),
                  ),
                  Padding(padding: EdgeInsets.only(left: 16.0)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transactions[index].title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(DateFormat.yMMMd().format(transactions[index].date))
                    ],
                  ),
                ],
              ));
        },
        itemCount: transactions.length,
      ),
    );
  }
}
