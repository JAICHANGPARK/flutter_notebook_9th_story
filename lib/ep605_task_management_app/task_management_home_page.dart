import 'package:flutter/material.dart';

class TaskManagementHomePage extends StatefulWidget {
  @override
  _TaskManagementHomePageState createState() => _TaskManagementHomePageState();
}

class _TaskManagementHomePageState extends State<TaskManagementHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home),
            label: "Home")
      ],),
    );
  }
}
