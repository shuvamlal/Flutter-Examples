import 'package:flutter/material.dart';

class TitleSection extends StatefulWidget {
  @override
  _TitleSectionState createState() => _TitleSectionState();
}

class _TitleSectionState extends State<TitleSection> {
  bool _isFavourite = true;
  int _isCount = 41;

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
              Text(
                "Oeschinen Lake Campground",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(top: 6)),
              Text(
                "Kandersteg, Switzerland",
                style: TextStyle(color: Colors.grey),
              )
            ],
          )),
          IconButton(
              icon: Icon(
                _isFavourite ? Icons.star : Icons.star_border,
                color: Colors.redAccent,
              ),
              onPressed: () {
                setState(() {
                  if (_isFavourite) {
                    _isFavourite = false;
                    _isCount--;
                  } else {
                    _isFavourite = true;
                    _isCount++;
                  }
                });
              }),
          Text('$_isCount'),
          Center(
            
          )
        ],
      ),
    );
  }
}
