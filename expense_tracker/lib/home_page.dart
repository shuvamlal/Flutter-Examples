import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Card(
            child: Text("Card 1"),
          ),
          Card(
            child: Text("Card 2"),
          )
        ],
      ),
    );
  }
}
