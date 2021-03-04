import 'package:flutter/material.dart';
import './widgets/transaction_section.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Expenses"),
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
            TransactionSection(),
          ],
        ),
      ),
    ));
  }
}
