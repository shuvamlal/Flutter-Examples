import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Oeschinen Lake Campground", style: TextStyle(fontWeight: FontWeight.bold),), 
              Padding(padding: EdgeInsets.only(top: 6)),
              Text("Kandersteg, Switzerland", style: TextStyle(color: Colors.grey),)
            ],
          )),
          Icon(Icons.star, color: Colors.redAccent,),
          Text("32")
        ],
      ),
    );
  }
}
