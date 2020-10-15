import 'package:flutter/material.dart';

class TaskManagementHomePage extends StatefulWidget {
  @override
  _TaskManagementHomePageState createState() => _TaskManagementHomePageState();
}

class _TaskManagementHomePageState extends State<TaskManagementHomePage> {
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
        onTap: (index){
          setState(() {
            _pageIndex = index;
          });
        },
        currentIndex: _pageIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "My Task"),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Subscription"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Calendar")
        ],
      ),
    );
  }
}
