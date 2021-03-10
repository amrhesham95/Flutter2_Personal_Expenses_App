import 'package:flutter/material.dart';

class TransactionInput extends StatelessWidget {
  final Function handler;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  TransactionInput({@required this.handler});
  void submitData() {
    var title = titleController.text;
    var amount = amountController.text;

    if (title.isEmpty || amount.isEmpty) {
      print("please enter valid data");
      return;
    }

    handler(title, amount);
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
