import 'package:flutter/material.dart';

class HomeMainPage extends StatefulWidget {
  @override
  _HomeMainPageState createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),

                      )
                    ]

                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                )),
            Expanded(flex: 1, child: Placeholder()),
            Expanded(flex: 20, child: Placeholder())
          ],
        ),
      ),
    );
  }
}














