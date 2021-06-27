import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  void submitData(String val){
  addTx(
      titleController.text,
      double.parse(amountController.text),
  );}

  @override
  Widget build(BuildContext context) {
    return           Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[

            TextField(decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,

              //onChanged: (value){
              //titleInput=value;
              //},
            ),
            TextField(decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: submitData,
              // onChanged: (value){
              //  amountInput=value;
              // },
            ),
            FlatButton(child: Text('Add Transaction'),
              textColor: Colors.purple,
              onPressed:(){

                );

              },
            ),
          ],),
      ),
    );
  }
}