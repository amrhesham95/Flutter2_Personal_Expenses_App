import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Card(
              child: Text("CHART"),
              color: Colors.blue,
            ),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: transactions.map((tx) {
                return Card(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(tx.amount.toString()),
                        Column(
                          children: [
                            Text(tx.title),
                            Text(
                              tx.date.toString(),
                            )
                          ],
                        )
                      ]),
                  elevation: 5,
                );
              }).toList()),
        ],
      ),
    ));
  }
}
