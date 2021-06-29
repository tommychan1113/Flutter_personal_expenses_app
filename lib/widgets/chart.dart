import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {

  final List <Transaction> recentTransactions;

  Chart(this.recentTransactions);

  List <Map<String, Object>> get groupTransactionValue{
    return List.generate(7, (index) {
      final weekday = DateTime.now().subtract(Duration(days: index),);
      var totalSum = 0.0;

      for (var i=0 ; i < recentTransactions.length; i++){
        if (recentTransactions[i].date.day == weekday.day &&
            recentTransactions[i].date.month == weekday.month &&
            recentTransactions[i].date.year == weekday.year
        ){
          totalSum += recentTransactions[i].amount;

        }

      }

      print(DateFormat.E(weekday));
      print(totalSum);

      return {'DAY': DateFormat.E(weekday),'amount': totalSum};
    });
  }


  @override
  Widget build(BuildContext context) {
    return Card(elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(children: <Widget>[

      ],),
    );
  }
}
