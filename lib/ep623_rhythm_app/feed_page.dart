import 'package:flutter/material.dart';
import 'dart:ui' as ui;

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
                onPressed: () {},
              ),
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.assistant_navigation),
                onPressed: () {},
              ),
              IconButton(
                color: Colors.white,
                icon: Icon(Icons.library_music),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 16,
              left: 8,
              right: 8,
              bottom: 0,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "FEED",
                          style: TextStyle(
                              color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold, letterSpacing: 2),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: ListView.builder(
                      itemBuilder: (context, index) {},
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 80,
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.grey[200],
                      ),
                      Center(
                        child: ClipRect(
                          // <-- clips to the 200x200 [Container] below
                          child: BackdropFilter(
                            filter: ui.ImageFilter.blur(
                              sigmaX: 5.0,
                              sigmaY: 5.0,
                            ),
                            child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 48,
                                      width: 48,
                                      decoration: BoxDecoration(
                                          color: Colors.redAccent, borderRadius: BorderRadius.circular(8)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Flutter Live",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                          ),
                                          Text("Dream Walker")
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                      icon: Icon(
                                        Icons.play_arrow,
                                        size: 32,
                                      ),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.skip_next,
                                        size: 32,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
