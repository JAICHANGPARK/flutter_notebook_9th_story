import 'package:flutter/material.dart';

class EventsMainPage extends StatefulWidget {
  @override
  _EventsMainPageState createState() => _EventsMainPageState();
}

class _EventsMainPageState extends State<EventsMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(color: Colors.orange[50], borderRadius: BorderRadius.circular(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.apps),
                          onPressed: () {},
                        ),
                        Text(
                          "event",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        IconButton(
                          icon: Icon(Icons.person_outline),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Hey Dreamwalker👋',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Find the amazing events\nnear you",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 64,
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(border: InputBorder.none, hintText: "Search locarion"),
                                  ),
                                ),
                                flex: 12,
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200], borderRadius: BorderRadius.circular(16)),
                                      child: Center(
                                        child: Icon(Icons.search),
                                      ),
                                    ),
                                  )),
                            ],
                          )),
                    )
                  ],
                ),
              ),
              flex: 3,
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "NEAREST EVENTS",
                            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "MORE",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Container(
                          height: 240,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Expanded(child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.green
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                        left: 8,
                                        top: 8,
                                        child: Container(
                                            height: 64,
                                          width: 48,
                                          decoration: BoxDecoration(
                                            color: Colors.white
                                          ),
                                    )),
                                  ],
                                ),
                              )),
                              Expanded(child: Placeholder()),
                            ],
                          ),
                        )
                      ],
                    ),
                    flex: 10,
                  ),
                ],
              ),
              flex: 4,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          padding: EdgeInsets.only(left: 16, bottom: 8, right: 64),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.home),
                    onPressed: () {},
                  ),
                  Text("Home"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.map),
                    onPressed: () {},
                  ),
                  Text("Map"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.chat),
                    onPressed: () {},
                  ),
                  Text("Chat"),
                ],
              ),
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
      ),

      // BottomNavigationBar(
      //   onTap: (idx) {},
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.map),
      //         label: "Map"
      //
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.chat_bubble),
      //         label: "Chat"
      //     ),
      //
      //   ],
      //
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
