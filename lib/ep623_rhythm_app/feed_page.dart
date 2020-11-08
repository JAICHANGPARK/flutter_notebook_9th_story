import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
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
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: SizedBox(
                            height: 230,
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: PageView(
                                controller: _pageController,
                                children: [
                                  Column(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(16),
                                                topRight: Radius.circular(16),
                                              ),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://cdn.pixabay.com/photo/2020/09/02/18/03/girl-5539094_960_720.jpg"),
                                                  fit: BoxFit.cover)),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 8,
                                                right: 8,
                                                bottom: 8,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Flutter Live Coding",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.white),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "Dreamwalker",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 8,
                                                        ),
                                                        Text(
                                                          "Youtube",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 8,
                                                        ),
                                                        RotatedBox(
                                                          quarterTurns: 1,
                                                          child: Icon(
                                                            Icons.arrow_circle_up,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        Spacer(),
                                                        IconButton(
                                                          icon: Icon(
                                                            Icons.add,
                                                          ),
                                                          color: Colors.white,
                                                          onPressed: () {},
                                                        ),
                                                        IconButton(
                                                          icon: Icon(
                                                            Icons.play_arrow,
                                                          ),
                                                          color: Colors.white,
                                                          onPressed: () {},
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 14,
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                "Dreamwalker",
                                                style: TextStyle(fontSize: 13),
                                              ),
                                              Spacer(),
                                              Icon(
                                                Icons.favorite,
                                                size: 20,
                                              ),
                                              Text("199"),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    _pageController.jumpToPage(1);
                                                  });
                                                },
                                                child: Icon(
                                                  Icons.chat_bubble,
                                                  size: 20,
                                                ),
                                              ),
                                              Text("88"),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 14,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 16),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          "Dreamwalker",
                                                          style: TextStyle(fontWeight: FontWeight.bold),
                                                        ),
                                                        Text("I Just wanna build success"),
                                                      ],
                                                    ),
                                                    Text("#Flutter #Google")
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 8,
                                          child: ListView.builder(
                                            itemCount: 20,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding: const EdgeInsets.only(bottom: 8),
                                                child: Row(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 14,
                                                    ),
                                                    SizedBox(
                                                      width: 16,
                                                    ),
                                                    Text(
                                                      "Dreamwalker",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text("Hello Flutter live coding")
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  flex: 2,
                                                  child: CircleAvatar(
                                                    radius: 14,
                                                  )),
                                              Expanded(
                                                child: Container(
                                                  margin: EdgeInsets.symmetric(vertical: 3),
                                                  decoration: BoxDecoration(color: Colors.grey[300],
                                                  borderRadius: BorderRadius.circular(16)),
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: "Add a comment"
                                                    ),
                                                  ),
                                                ),
                                                flex: 16,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
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
