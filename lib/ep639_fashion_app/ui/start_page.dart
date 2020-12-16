import 'package:flutter/material.dart';

class FashionStartPage extends StatefulWidget {
  @override
  _FashionStartPageState createState() => _FashionStartPageState();
}

class _FashionStartPageState extends State<FashionStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          IconButton(icon: Icon(Icons.search ), onPressed: (){}),
          IconButton(icon: Icon(Icons.account_circle_outlined ), onPressed: (){}),
          IconButton(icon: Icon(Icons.menu ), onPressed: (){
            Scaffold.of(context).openDrawer();
          }),
        ],
      ),
      drawer: Drawer(),
    );
  }
}

















