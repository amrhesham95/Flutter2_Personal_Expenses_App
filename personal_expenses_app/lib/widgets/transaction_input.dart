import 'package:flutter/material.dart';

class TransactionInput extends StatefulWidget {
  final Function handler;

  TransactionInput({@required this.handler});

  @override
  _TransactionInputState createState() => _TransactionInputState();
}

class _TransactionInputState extends State<TransactionInput> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    var title = titleController.text;
    var amount = double.parse(amountController.text);

    if (title.isEmpty || amount <= 0) {
      print("please enter valid data");
      return;
    }

    widget.handler(title, amount);
    Navigator.of(context).pop;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amountController,
              keyboardType: TextInputType.number,
            ),
            FlatButton(
              child: Text("Add Transaction"),
              textColor: Colors.purple,
              onPressed: submitData,
            )
          ],
        ),
      ),
    );
  }
}
