import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/user_transactions.dart';
import './widgets/user_transactions.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {


  //late String titleInput;
  //late String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: SingleChildScrollView(
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(

                width: double.infinity ,
                child: Card(
                  color: Colors.blue,
                      child: Text('Chart'),
                  elevation: 5,
                ),
              ),
              UserTransactions()
            ],
          ),
      ),
      );

  }
}