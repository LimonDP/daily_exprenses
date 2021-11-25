import 'package:daily_expenses/models/transacrion.dart';
import 'package:daily_expenses/widgets/listbuilderTransaction.dart';
import 'package:daily_expenses/widgets/new_transaction.dart';
import 'package:daily_expenses/widgets/transactionList.dart';
import 'package:flutter/material.dart';

class UserTransaction extends StatefulWidget {
  //const UserTransaction({Key? key}) : super(key: key);
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  List<Transaction> transaction = [
    Transaction(
      id: '1',
      title: 'Flutter Book',
      amount: 450.0,
      add_date: DateTime.now(),
    ),
  ];

  addTransaction(String title, double amount) {
    final addTr = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      add_date: DateTime.now(),
    );
    setState(() {
      transaction.add(addTr);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(
          transactionFunction: addTransaction,
        ),
        // TransactionList(
        //   tLsit: transaction,
        // ),
        TransactionBuilder(
          tlist: transaction,
        )
      ],
    );
  }
}
