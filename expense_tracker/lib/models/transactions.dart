import 'package:flutter/material.dart';

class Transactions {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transactions(
      {@required this.id,
      @required this.title,
      @required this.amount,
      @required this.date});

  Map<String, dynamic> toMap(){
    return {
      'id' : id,
      'title' : title,
      'amount' : amount,
      'date' : date
    };
  }
}