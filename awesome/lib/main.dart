import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Start"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
           Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
           Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          ],
          
        )
      ),
    );
  }
}