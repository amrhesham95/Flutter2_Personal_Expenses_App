import 'package:flutter/material.dart';
import 'package:personal_expenses_app/widgets/transaction_input.dart';
import 'package:personal_expenses_app/widgets/transactions_list.dart';
import 'models/transaction.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transactionsList = [
    Transaction(
      title: "T1",
      amount: 22.5,
      id: "0",
      date: DateTime.now(),
    ),
    Transaction(
      title: "T2",
      amount: 54.2,
      id: "1",
      date: DateTime.now(),
    )
  ];

  void addNewTransaction(String title, double amount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      transactionsList.add(newTx);
    });
  }

  void startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return TransactionInput(
              handler: (String title, double amount) =>
                  {addNewTransaction(title, amount)});
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Expenses"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
            ),
            onPressed: () => startAddNewTransaction(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Card(
                child: Text("CHART"),
                color: Colors.blue,
              ),
            ),
            TransactionsList(
              transactions: transactionsList,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ));
  }
}
