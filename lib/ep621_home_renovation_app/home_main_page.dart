import 'package:flutter/material.dart';

class HomeMainPage extends StatefulWidget {
  @override
  _HomeMainPageState createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Expanded(
            flex: 2,
            child: Container(
                margin: EdgeInsets.all(7),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                BoxShadow(
                color: Colors.black.withOpacity(0.21),
                    blurRadius: 10,
                    spreadRadius: 10
                )
                ]
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          )),
      Expanded(flex: 1, child: Text("Professionals", style: TextStyle(
        fontSize: 18
      ),)),
      Expanded(flex: 20, child: Placeholder())
      ],
    ),)
    ,
    );
  }
}














