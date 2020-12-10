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
              flex: 2,
            ),
            Expanded(
              child: Column(
                children: [],
              ),
              flex: 3,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {},
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
              label: "Map"

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
              label: "Chat"
          ),
        ],
      ),
    );
  }
}

















