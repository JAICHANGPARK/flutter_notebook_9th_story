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
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0,
        title: Text(
          "TODOS",
          style: TextStyle(color: Colors.deepOrange),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
          ),
          IconButton(
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 16,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    )),
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Placeholder(),
                    ),
                    Expanded(
                      flex: 10,
                      child: Placeholder(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
        onTap: (index) {
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
