import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.camera_alt,
          color: Colors.black,
        ),
        titleSpacing: 0.0,
        title: SizedBox(
            height: 35, child: Image.asset('assets/images/insta_logo.png')),
        elevation: 1,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.send,
              color: Colors.black,
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: Icon(Icons.home), onPressed: () {}),
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.ondemand_video), onPressed: () {}),
              IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://avatars2.githubusercontent.com/u/38887333?s=460&u=5fd5b89ead95f49257c72baa027bc1a636bdba47&v=4'),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
