import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var text = 'home';
  bool fav = false;
  bool home = false;
  bool search = false;
  bool reel = false;
  
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
        elevation: 0.0,
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
          elevation: 0.0,
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Flexible(
              fit: FlexFit.loose,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: GestureDetector(
                      child: Icon(
                        home ? Icons.home : Icons.home_filled,
                        size: 30,
                      ),
                      onTap: () {
                        setState(() {
                          home = home ? false : true;
                        });
                      },
                    ),
                  ),
                  GestureDetector(
                    child: Icon(
                      search ? Icons.search : Icons.search,
                      size: 30,
                    ),
                    onTap: () {
                      setState(() {
                        search = search ? false : true;
                      });
                    },
                  ),
                  GestureDetector(
                    child: Icon(
                      reel
                          ? Icons.ondemand_video
                          : Icons.ondemand_video_outlined,
                      size: 30,
                    ),
                    onTap: () {
                      setState(() {
                        reel = reel ? false : true;
                      });
                    },
                  ),
                  GestureDetector(
                    child: Icon(
                      fav ? Icons.favorite_border : Icons.favorite,
                      size: 30,
                    ),
                    onTap: () {
                      setState(() {
                        fav = fav ? false : true;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (text == 'home')
                            text = 'profile';
                          else
                            text = 'home';
                        });
                      },
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://avatars2.githubusercontent.com/u/38887333?s=460&u=5fd5b89ead95f49257c72baa027bc1a636bdba47&v=4',
                        ),
                        radius: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Text(text),
    );
  }
}
