import 'package:daily_expenses/widgets/new_transaction.dart';
import 'package:daily_expenses/widgets/transactionList.dart';
import 'package:daily_expenses/widgets/ueserTransaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daily Expenses'),
          centerTitle: true,
          backgroundColor: Colors.green.shade900,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [UserTransaction()],
            ),
          ),
        ),
      ),
    );
  }
}
