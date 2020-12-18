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
          BottomNavigationBarItem(icon: Icon(Icons.open_in_browser), label: "BROWSE"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "WISHLIST"),
          BottomNavigationBarItem(icon: Icon(Icons.move_to_inbox), label: "MY BOX"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "PEOPLE"),

        ],
      ),
    );
  }
}
