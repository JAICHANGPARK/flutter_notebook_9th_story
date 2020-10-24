import 'package:flutter/material.dart';

class NewonceMainPage extends StatefulWidget {
  @override
  _NewonceMainPageState createState() => _NewonceMainPageState();
}

class _NewonceMainPageState extends State<NewonceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
        ],

      ),
    );
  }
}
