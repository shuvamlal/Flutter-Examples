import 'package:flutter/material.dart';

class InputTransaction extends StatefulWidget {
  final Function addTx;

  InputTransaction(this.addTx);

  @override
  _InputTransactionState createState() => _InputTransactionState();
}

class _InputTransactionState extends State<InputTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enterTitle = titleController.text;
    final enterAmount = double.parse(amountController.text);

    if (enterTitle.isEmpty || enterAmount <= 0) return;

    widget.addTx(enterTitle, enterAmount);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(hintText: 'Items Name'),
            textCapitalization: TextCapitalization.words,
            controller: titleController,
            onSubmitted: (_) => submitData(),
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Amount charged'),
            keyboardType: TextInputType.number,
            controller: amountController,
            onSubmitted: (value) => submitData(),
          ),
          FlatButton(
              onPressed: () => submitData(), child: Text('Add Transaction'))
        ],
      ),
    );
  }
}
