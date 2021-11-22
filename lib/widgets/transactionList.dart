import 'package:daily_expenses/models/transacrion.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> tLsit;
  const TransactionList({required this.tLsit});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            color: Colors.green,
            child: Text(
              'Transaction List',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          ...tLsit.map((tlist) {
            return Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 8),
              child: Card(
                color: Colors.grey.shade200,
                child: Container(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(border: Border.all()),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Text('\$ ${tlist.amount}'),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(tlist.title),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            DateFormat.yMMMEd().format(tlist.add_date),
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
