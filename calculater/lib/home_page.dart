import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int a = 5;
  int b = 10;
  int c = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              decoration: InputDecoration(),
              keyboardType: TextInputType.number,
            ),
            Text('a = $a'),
            Text('b = $b'),
            Text('c = $c'),
            IconButton(
                icon: Icon(Icons.add),
                iconSize: 20,
                focusColor: Colors.greenAccent,
                hoverColor: Colors.pinkAccent,
                onPressed: () {
                  setState(() {
                    c = a + b;
                  });
                })
          ],
        ),
      ),
    );
  }
}
