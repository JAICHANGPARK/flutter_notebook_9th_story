
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Class Previews", style: TextStyle(
              color: Colors.white
            ),),
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 160,
                      width: 240,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                      ),
                    ),
                    Text("Dream Walker", style: TextStyle(
                      color: Colors.white
                    ),),
                    Divider(),
                    Text("Flutter Live Coding", style: TextStyle(
                      color: Colors.grey
                    ),)
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
