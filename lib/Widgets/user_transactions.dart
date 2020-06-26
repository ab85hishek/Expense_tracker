import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 'T1',
      title: 'New shoes',
      amount: 700,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T2',
      title: 'New bags',
      amount: 500,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction( _addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
