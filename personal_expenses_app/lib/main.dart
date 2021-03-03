import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("test"),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              child: Card(
                child: Text("CHART"),
                color: Colors.blue,
              ),
            ),
            Card(
              child: Text("List of TX"),
            ),
          ],
        ),
      ),
    );
  }
}
