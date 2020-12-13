import 'package:flutter/material.dart';

class OnlineCourseMainPage extends StatefulWidget {
  @override
  _OnlineCourseMainPageState createState() => _OnlineCourseMainPageState();
}

class _OnlineCourseMainPageState extends State<OnlineCourseMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home"
        )
      ],

      ),
    );
  }
}
