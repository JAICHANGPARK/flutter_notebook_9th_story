
import 'package:flutter/material.dart';

class CourseHomePage extends StatefulWidget {
  @override
  _CourseHomePageState createState() => _CourseHomePageState();
}

class _CourseHomePageState extends State<CourseHomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Text("Class Previews", style: TextStyle(
              color: Colors.white
            ),)
          ],
        )
      ],
    );
  }
}
