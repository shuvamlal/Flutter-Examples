import 'package:expense_tracker/widgets/chart.dart';
import 'package:flutter/material.dart';
import 'models/transactions.dart';
import 'widgets/input_transaction.dart';
import 'widgets/transactions_list.dart';
import 'database.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _HomePageState();

  // final List<Transactions> _userTransactions = [
  //   // Transaction(id: '1', title: "New Shoe", amount: 6.8, date: DateTime.now()),
  //   // Transaction(id: '2', title: "Paint Ball", amount: 7.4, date: DateTime.now())
  // ];

  void _addTransactions(
      String txTitle, double txAmount, DateTime chsnDate) async {
    final val = Transactions(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: chsnDate);
    // _userTransactions.add(val);
    int i = await DatabaseHelper.instance.insert(val);
    print(i);
  }

  void _deleteTransactions(String id) {
    setState(() {
      print(id);
      DatabaseHelper.instance.delete(id);
      // _userTransactions.removeWhere((element) => element.id == id);
    });
  }

  void _startAddNewTransactions(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: InputTransaction(_addTransactions),
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  // List<Transactions> get _recentTransactions {
  //   return _userTransactions.where((element) {
  //     return element.date.isAfter(DateTime.now().subtract(Duration(days: 7)));
  //   }).toList();
  // }

  Future<List<Transactions>> get _recentTransaction async {
    final List<Transactions> maps = await DatabaseHelper.instance.queryAll();
    return maps.where((element) {
      return element.date.isAfter(DateTime.now().subtract(Duration(days: 7)));
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final appBar = AppBar(
      title: Text(
        "Expense Tracker",
        style: Theme.of(context).textTheme.headline6,
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => _startAddNewTransactions(context),
        )
      ],
    );
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: (mediaQuery.size.height -
                        appBar.preferredSize.height -
                        mediaQuery.padding.top) *
                    0.3,
                child: Chart(_recentTransaction)),
            Container(
                height: (mediaQuery.size.height -
                        appBar.preferredSize.height -
                        mediaQuery.padding.top) *
                    0.7,
                child:
                    TransactionsList(_userTransactions, _deleteTransactions)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewTransactions(context),
        splashColor: Colors.blueGrey,
      ),
    );
  }
}
