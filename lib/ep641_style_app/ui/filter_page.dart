import 'package:flutter/material.dart';

class StyleFilterPage extends StatefulWidget {
  @override
  _StyleFilterPageState createState() => _StyleFilterPageState();
}

class _StyleFilterPageState extends State<StyleFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          child: Icon(Icons.clear),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "FILTERS",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          
        ],
      )
    );
  }
}
