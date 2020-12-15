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
              Text(
                "Class Previews",
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Container(
                  height: 230,
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
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2015/01/08/18/24/children-593313_960_720.jpg",
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Dream Walker",
                            style: TextStyle(color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Container(height: 1, width: 100, decoration: BoxDecoration(color: Colors.grey)),
                          ),
                          Text(
                            "Flutter Live Coding",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              height: 160,
                              width: 240,
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2015/01/08/18/24/children-593313_960_720.jpg",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Dream Walker",
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Container(height: 1, width: 100, decoration: BoxDecoration(color: Colors.grey)),
                            ),
                            Text(
                              "Flutter Live Coding",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Text(
                "Popular Classes",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              ListView.separated(itemBuilder: (context, index){}, separatorBuilder: (context, index), itemCount: 10)
            ],
          ),
        )
      ],
    );
  }
}
