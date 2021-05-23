import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final itemNameController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Item Name'),
            controller: itemNameController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Price'),
            controller: amountController,
          ),
          FlatButton(
            child: Text('Add Transaction'),
            textColor: Colors.purple,
            padding: EdgeInsets.only(top: 25, right: 10),
            onPressed: () {
              addTx(
                  itemNameController.text, double.parse(amountController.text));
            },
          ),
        ],
      ),
    ));
  }
}
