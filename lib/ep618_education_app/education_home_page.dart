import 'package:flutter/material.dart';

class EducationHomePage extends StatefulWidget {
  @override
  _EducationHomePageState createState() => _EducationHomePageState();
}

class _EducationHomePageState extends State<EducationHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 24,
            right: 24,
            top: 48,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.menu),
                    iconSize: 48,
                    onPressed: () {  },
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {  },
                  ),

                ],
              ),
            ),
          )
        ],

      ),
    );
  }
}
