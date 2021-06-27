import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/new_transaction.dart';
import '../models/transaction.dart';
import '../widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {


  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {

  final List<Transaction> _userTransactions = [
    Transaction(id: 't1', title: 'New shoe', amount: 98.99, date: DateTime.now(),),
    Transaction(id: 't2', title: 'New clothes', amount: 30.99, date: DateTime.now(),
    ),];


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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions)
      ],

    );
  }
}
