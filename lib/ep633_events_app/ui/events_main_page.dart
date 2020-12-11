import 'package:flutter/material.dart';

class EventsMainPage extends StatefulWidget {
  @override
  _EventsMainPageState createState() => _EventsMainPageState();
}

class _EventsMainPageState extends State<EventsMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(4),
                decoration: BoxDecoration(color: Colors.orange[100], borderRadius: BorderRadius.circular(16)),
              ),
              flex: 3,
            ),
            Expanded(
              child: Column(
                children: [],
              ),
              flex: 4,
            ),
          ],
        ),
      ),
      bottomNavigationBar:
      BottomAppBar(
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
                    icon: Icon(Icons.home), onPressed: () {  },
                  ),
                  Text("Home"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.map), onPressed: () {  },
                  ),
                  Text("Map"),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.chat), onPressed: () {  },
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
        onPressed: () {  },
        child: Icon(Icons.add),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}

















