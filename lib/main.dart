import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/transaction_list.dart';

import './widgets/transaction_list.dart';
import 'widgets/new_transaction.dart';
import './models/transaction.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal expenses App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
        title: TextStyle(
          fontFamily: 'OpenSans',
          fontSize: 18,
          fontWeight: FontWeight.bold,)
      ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
            title: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),)
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  //late String titleInput;
  //late String amountInput;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  final List<Transaction> _userTransactions = [
   // Transaction(id: 't1', title: 'New shoe', amount: 98.99, date: DateTime.now(),),
   // Transaction(id: 't 2', title: 'New clothes', amount: 30.99, date: DateTime.now(),
    //),
  ];


  void _addNewTransaction(String txTitle, double txAmount){
    final newTx= Transaction(
      title:txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void _startAddNewTransaction(BuildContext ctx){
    showModalBottomSheet(context: ctx, builder: (_){
      return GestureDetector(
        onTap: (){},
        child:NewTransaction(_addNewTransaction),
        behavior: HitTestBehavior.opaque,
      );
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal expenses'),
        actions: <Widget>[
          IconButton(onPressed: ()=> _startAddNewTransaction(context), icon: Icon(Icons.add))

        ],
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
              TransactionList(_userTransactions),
            ],
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:  ()=> _startAddNewTransaction(context),
      )
      );

  }
}
