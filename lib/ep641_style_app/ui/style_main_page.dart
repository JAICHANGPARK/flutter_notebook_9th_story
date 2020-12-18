import 'package:flutter/material.dart';

class StyleMainPage extends StatefulWidget {
  @override
  _StyleMainPageState createState() => _StyleMainPageState();
}

class _StyleMainPageState extends State<StyleMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "BROWSE"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "WISHLIST"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "MY BOX"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "PEOPLE"),

        ],
      ),
    );
  }
}
