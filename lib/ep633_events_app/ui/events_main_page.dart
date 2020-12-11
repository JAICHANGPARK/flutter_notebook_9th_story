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
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(color: Colors.orange[100], borderRadius: BorderRadius.circular(16)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.apps), onPressed: () {  },

                        )
,
                      Text("event", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),)],
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
                          Text("NEAREST EVENTS", style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                          ),),
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
                    child: Placeholder(),
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
