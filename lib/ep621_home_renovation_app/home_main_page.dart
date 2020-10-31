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
                flex : 3,child: Placeholder()),
            Expanded(
                flex: 1,child: Placeholder()),
            Expanded(
                flex: 20,child: Placeholder())
          ],
        ),
      ),
    );
  }
}
