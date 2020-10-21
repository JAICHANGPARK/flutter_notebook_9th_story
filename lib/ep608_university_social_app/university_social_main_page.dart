import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UniversitySocialMainPage extends StatefulWidget {
  @override
  _UniversitySocialMainPageState createState() => _UniversitySocialMainPageState();
}

class _UniversitySocialMainPageState extends State<UniversitySocialMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 84,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32),
                        bottomRight: Radius.circular(32),
                      ),
                      boxShadow: [
                        BoxShadow(color: Colors.blueGrey[50], blurRadius: 2, spreadRadius: 2, offset: Offset(0, 4))
                      ]),
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(alignment: Alignment.centerLeft, child: Icon(Icons.arrow_back_rounded)),
                      ),
                      Expanded(
                          child: Center(
                              child: Text(
                        "Inbox",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ))),
                      Expanded(
                        child: Align(alignment: Alignment.centerRight, child: Icon(Icons.info_outline)),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 84,
                left: 0,
                right: 0,
                bottom: 0,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.blueGrey[50], borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Search", suffixIcon: Icon(Icons.search)),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 15,
                      child: ListView(
                        children: [
                          Container(
                            height: 94,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 16, bottom: 16, top: 4),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.blueGrey,
                                        ),
                                        borderRadius: BorderRadius.circular(14)),
                                    padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius: BorderRadius.circular(4)
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 9,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Club 1",
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 16),
                                              child: CircleAvatar(
                                                radius: 10,
                                                child: Icon(
                                                  Icons.check,
                                                  size: 16,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 48,),
                                            CircleAvatar(radius: 12,),
                                            CircleAvatar(radius: 12,),
                                            CircleAvatar(radius: 12,),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          child: Text(
                                            "I will Attend the Devfest, but now...",
                                            style: TextStyle(
                                                fontSize: 13, color: Colors.black54, fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8),
                                          child: Divider(
                                            color: Colors.grey,
                                            thickness: 1.3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            height: 94,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 16, bottom: 16, top: 4),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.pink,
                                        ),
                                        borderRadius: BorderRadius.circular(14)),
                                    padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.pink,
                                          borderRadius: BorderRadius.circular(4)
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 9,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Dream Walker",
                                              style: TextStyle(fontSize: 16),
                                            ),

                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          child: Text(
                                            "I will Attend the Devfest, but now...",
                                            style: TextStyle(
                                                fontSize: 13, color: Colors.black54, fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8),
                                          child: Divider(
                                            color: Colors.grey,
                                            thickness: 1.3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            height: 94,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 16, bottom: 16, top: 4),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.teal,
                                        ),
                                        borderRadius: BorderRadius.circular(14)),
                                    padding: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.pink,
                                          borderRadius: BorderRadius.circular(4)
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 9,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Sub Group",
                                              style: TextStyle(fontSize: 16),
                                            ),

                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8),
                                          child: Text(
                                            "I will Attend the Devfest, but now...",
                                            style: TextStyle(
                                                fontSize: 13, color: Colors.black54, fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 8),
                                          child: Divider(
                                            color: Colors.grey,
                                            thickness: 1.3,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 16,
                right: 16,
                bottom: 16,
                child: _BottomAppBar(),
              )
            ],
          ),
        ),
        floatingActionButton: _AppFAB());
  }
}

class _AppFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 120),
        child: FloatingActionButton(
          backgroundColor: Colors.indigo,
          onPressed: () {},
          child: Icon(Icons.add),
        ));
  }
}

class _BottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(42),
          boxShadow: [BoxShadow(color: Colors.blueGrey[50], blurRadius: 2, spreadRadius: 2, offset: Offset(0, 4))]),
      child: Row(
        children: [
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.home,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.local_fire_department,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Icon(
                Icons.favorite_border,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(32), bottomRight: Radius.circular(32))),
              child: Center(
                child: IconButton(
                  icon: Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
