import 'package:flutter/material.dart';

class NewonceMainPage extends StatefulWidget {
  @override
  _NewonceMainPageState createState() => _NewonceMainPageState();
}

class _NewonceMainPageState extends State<NewonceMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Placeholder(),
            ),
            Expanded(
              flex: 15,
              child: Placeholder(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: BottomAppBar(
            color: Colors.black,
            child: Container(
              height: 64,
            )

            // showSelectedLabels: false,
            // showUnselectedLabels: false,
            // items: [
            //   BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            //   BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
            //   BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
            //   BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
            // ],

            ),
      ),
    );
  }
}
