import 'package:flutter/material.dart';

class FashionStartPage extends StatefulWidget {
  @override
  _FashionStartPageState createState() => _FashionStartPageState();
}

class _FashionStartPageState extends State<FashionStartPage> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: Row(
          children: [
            Icon(Icons.keyboard_arrow_down_rounded),
            Text(
              "ENG",
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.account_circle_outlined), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                _drawerKey.currentState.openDrawer();
              }),
        ],
      ),
      drawer: Drawer(),
      body: Stack(
        children: [
          Positioned(left: 0, right: 0, bottom: 0, top: 0, child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("")
              )
            ),
          )),
        ],
      ),
    );
  }
}













