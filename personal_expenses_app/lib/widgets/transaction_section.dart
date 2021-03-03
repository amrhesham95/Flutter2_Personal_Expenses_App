import 'package:flutter/material.dart';
import 'package:personal_expenses_app/models/transaction.dart';
import 'package:personal_expenses_app/widgets/transaction_input.dart';
import 'package:personal_expenses_app/widgets/transactions_list.dart';

class TransactionSection extends StatefulWidget {
  @override
  _TransactionSectionState createState() => _TransactionSectionState();
}

class _TransactionSectionState extends State<TransactionSection> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionInput(handler: addNewTransaction),
        TransactionsList(
          transactions: transactionsList,
        ),
      ],
    );
  }

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
}
