import "package:flutter/material.dart";

class NameCard extends StatelessWidget {
  const NameCard({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset("assets/abc.jpeg"),
          SizedBox(
            height: 20,
          ),
          Text(
            myText,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  hintText: "Your Name",
                  labelText: "Name",
                  border: OutlineInputBorder()),
            ),
          )
        ],
      ),
    );
  }
}