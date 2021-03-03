import 'package:flutter/material.dart';
import 'package:personal_expenses_app/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionsList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionsList({@required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
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
    );
  }
}
