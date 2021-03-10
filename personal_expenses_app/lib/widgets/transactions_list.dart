import 'package:flutter/material.dart';
import 'package:personal_expenses_app/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionsList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionsList({@required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    ),
                  ),
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "\$${transactions[index].amount.toStringAsFixed(2)}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).primaryColor),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transactions[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      DateFormat().add_yMMMd().format(transactions[index].date),
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
        },
        itemCount: transactions.length,
      ),
    );
  }
}
