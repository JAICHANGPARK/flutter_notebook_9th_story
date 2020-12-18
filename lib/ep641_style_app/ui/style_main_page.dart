import 'package:flutter/material.dart';

class StyleMainPage extends StatefulWidget {
  @override
  _StyleMainPageState createState() => _StyleMainPageState();
}

class _StyleMainPageState extends State<StyleMainPage> {
  num _pageIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 3, child: Placeholder()),
            Expanded(flex: 8, child: Placeholder()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _pageIdx,
        onTap: (newPageIndex) {
          setState(() {
            _pageIdx = newPageIndex;
          });
        },
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
