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
            Expanded(child: Placeholder()
            ,
            flex: 2,),
            Expanded(child: Placeholder(),
            flex: 3,),
          ],
        ),
      ),
    );
  }
}
