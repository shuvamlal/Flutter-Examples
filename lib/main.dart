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
        child: Container(
          width: 100,
          height: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
              Colors.pink,
              Colors.yellow
            ]),
            boxShadow: [
              BoxShadow(
                color: Colors.pink,
                blurRadius: 10
              )
            ]
          ),
          child: Text(
            "I'm a box.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}