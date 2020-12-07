import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputTransaction extends StatefulWidget {
  final Function addTx;

  InputTransaction(this.addTx);

  @override
  _InputTransactionState createState() => _InputTransactionState();
}

class _InputTransactionState extends State<InputTransaction> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  DateTime _selectedDate;

  void _submitData() {
    final enterTitle = _titleController.text;
    final enterAmount = double.parse(_amountController.text);

    if (enterTitle.isEmpty || enterAmount <= 0 || _selectedDate == null) return;

    widget.addTx(enterTitle, enterAmount, _selectedDate);

    Navigator.of(context).pop();
  }

  void _presentDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2019),
            lastDate: DateTime.now())
        .then((_pickedDate) {
      if (_pickedDate == null) return;
      setState(() {
        _selectedDate = _pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, MediaQuery.of(context).viewInsets.bottom + 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                textCapitalization: TextCapitalization.words,
                controller: _titleController,
                onSubmitted: (_) => _submitData(),
                // onChanged: (val) {
                //   titleInput = val;
                // },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: _amountController,
                keyboardType: TextInputType.number,
                onSubmitted: (_) => _submitData(),
                // onChanged: (val) => amountInput = val,
              ),
              Container(
                height: 70,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(_selectedDate == null
                          ? "No Date choosen"
                          : "Picked Date: ${DateFormat.yMd().format(_selectedDate)}"),
                    ),
                    FlatButton(
                      textColor: Theme.of(context).primaryColor,
                      onPressed: _presentDatePicker,
                      child: Text(
                        "Choose Date",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              RaisedButton(
                child: Text('Add Transaction'),
                color: Theme.of(context).primaryColor,
                textColor: Theme.of(context).textTheme.button.color,
                onPressed: _submitData,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
