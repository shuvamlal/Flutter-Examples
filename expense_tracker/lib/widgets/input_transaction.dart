import 'package:flutter/material.dart';

class InputTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  InputTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: 'Items Name'),
            textCapitalization: TextCapitalization.words,
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Amount charged'),
            keyboardType: TextInputType.number,
            controller: amountController,
          ),
          FlatButton(
              onPressed: () {
                addTx(titleController.text, double.parse(amountController.text));
              },
              child: Text('Add Transaction'))
        ],
      ),
    );
  }
}
