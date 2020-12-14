
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
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Class Previews", style: TextStyle(
                color: Colors.white
              ),),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Container(
                  height: 220,

                  child: ListView(
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
                          SizedBox(height: 8,),
                          Text("Dream Walker", style: TextStyle(
                            color: Colors.white
                          ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(
                              height: 1,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.grey
                              )
                            ),
                          ),
                          Text("Flutter Live Coding", style: TextStyle(
                            color: Colors.grey
                          ),)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
