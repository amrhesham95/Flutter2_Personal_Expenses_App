import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

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
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple,
                            width: 2,
                          ),
                        ),
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "\$${tx.amount}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.purple),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tx.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            DateFormat().add_yMMMd().format(tx.date),
                            style: TextStyle(
                              fontSize: 8,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  elevation: 5,
                );
              }).toList()),
        ],
      ),
    ));
  }
}
