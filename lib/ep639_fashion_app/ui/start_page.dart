import 'package:flutter/cupertino.dart';
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
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage("https://cdn.pixabay.com/photo/2016/04/16/19/51/girl-1333640_960_720.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken)),
                ),
              )),
          Positioned(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    "NEW COLORS FOR DREAM PRODUCTS",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Text(
                  "SS21",
                  style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Text(
                  "COLLECTION",
                  style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blueAccent,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                        "shop now",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.sanitizer_outlined,
                      size: 48,
                      color: Colors.white,
                    ),
                    Container(
                      height: 64,
                      child: VerticalDivider(
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      children: [],
                    )
                  ],
                )
              ],
            ),
            top: 160,
            left: 16,
            right: 16,
            bottom: 48,
          )
        ],
      ),
    );
  }
}
