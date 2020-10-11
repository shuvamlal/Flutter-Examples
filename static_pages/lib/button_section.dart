import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.blue, Icons.call, "Call"),
          _buildButtonColumn(Colors.blue, Icons.near_me, "Routes"),
          _buildButtonColumn(Colors.blue, Icons.share, "Share"),
        ],
      ),
    );
  }
}

Column _buildButtonColumn(Color color, IconData icon, String name) {
  return Column(
    children: [
      Icon(icon, color: color,),
      Padding(padding: EdgeInsets.only(top: 8)),
      Text(name, style: TextStyle(color: color),)
    ],
  );
}
