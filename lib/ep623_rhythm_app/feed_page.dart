import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          color: Colors.black87,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.apps),
                onPressed: () {  },

              ),
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.assistant_navigation),
                onPressed: () {  },

              ),
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.library_music),
                onPressed: () {  },

              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [

        ],
      ),
    );
  }
}
