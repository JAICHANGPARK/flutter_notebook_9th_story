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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_books_sharp),
            label: "Library"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search"
        ),BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: "Account"
        )
      ],

      ),
    );
  }
}
