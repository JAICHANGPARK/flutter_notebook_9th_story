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
                    iconSize: 42,
                    onPressed: () {  },
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    iconSize: 42,
                    onPressed: () {  },
                  ),

                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 64,
            child: Image.network("https://ouch-cdn.icons8.com/preview/515/d0852353-9864-4c75-8e0c-dba0f02755b2.png",
            fit: BoxFit.fitHeight,
            height: 180,),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 260,
            bottom: 0,
            child: Container(

              decoration: BoxDecoration(
                  color: Colors.red,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  topLeft: Radius.circular(24),
                )
              ),
              child: Stack(),
            ),
          ),
        ],

      ),
    );
  }
}


















