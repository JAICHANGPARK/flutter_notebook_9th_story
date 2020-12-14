import 'package:flutter/material.dart';

class OnlineCourseMainPage extends StatefulWidget {
  @override
  _OnlineCourseMainPageState createState() => _OnlineCourseMainPageState();
}

class _OnlineCourseMainPageState extends State<OnlineCourseMainPage> {
  num _pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _pageIdx,
        children: [
          CourseHomePage(),
          Container(
            child: Center(
              child: Text(
                "page 2",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "page 3",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "page 4",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIdx,
        onTap: (newIndex) {
          setState(() {
            _pageIdx = newIndex;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.library_books_sharp), label: "Library"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined), label: "Account")
        ],
      ),
    );
  }
}
