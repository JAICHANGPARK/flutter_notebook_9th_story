import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class RhythmMainPage extends StatefulWidget {
  @override
  _RhythmMainPageState createState() => _RhythmMainPageState();
}

class _RhythmMainPageState extends State<RhythmMainPage> with TickerProviderStateMixin {
  int _tabIndex = 0;
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            top: 0,
            child: SafeArea(
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Text(
                                  "EXPLORE",
                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Badge(
                                  child: Icon(Icons.notifications),
                                  badgeContent: Text(
                                    "5",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: CircleAvatar(
                                    radius: 16,
                                  ),
                                )
                              ],
                            ),
                          )),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(32),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Search", suffixIcon: Icon(Icons.search), border: InputBorder.none),
                              ),
                            ),
                          )),
                          Expanded(
                              child: TabBar(
                            controller: _tabController,
                            indicatorColor: Colors.black,
                            isScrollable: true,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            tabs: [
                              Tab(
                                text: "Overview",
                              ),
                              Tab(
                                text: "Genres",
                              ),
                              Tab(
                                text: "Podcast",
                              ),
                              Tab(
                                text: "Recommend",
                              )
                            ],
                          )),
                        ],
                      )),
                  Divider(
                    color: Colors.black,
                    thickness: 1.5,
                    height: 0,
                  ),
                  Expanded(
                      flex: 6,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Column(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        flex: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 16),
                                          child: Text(
                                            "Recently played",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        )),
                                    Expanded(
                                        flex: 8,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: 10,
                                          itemBuilder: (BuildContext context, int index) {
                                            return Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Expanded(
                                                    flex: 8,
                                                    child: CircleAvatar(
                                                      radius: 82,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Text("Dream"),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ))
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Container(
                                color: Colors.white,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "Top Picks",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 8,
                                      child: ListView.builder(
                                        itemCount: 10,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (BuildContext context, int index) {
                                          return Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                  flex: 2,
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Text(
                                                      "Walker",
                                                      style: TextStyle(fontSize: 13),
                                                    ),
                                                  )),
                                              Expanded(
                                                  flex: 10,
                                                  child: Container(
                                                    margin:EdgeInsets.only(bottom: 8, left: 8, right: 8),
                                                    height: 120,
                                                    width: 160,
                                                    decoration: BoxDecoration(
                                                      color: Colors.red,
                                                    ),
                                                  )),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                            ],
                          ),
                          Container(
                            child: Center(
                              child: Text("Genres"),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text("Genres"),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text("Genres"),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 80,
                child: Stack(
                  children: [
                    Container(
                      color: Colors.grey[200],
                    ),
                    Center(
                      child: ClipRect(
                        // <-- clips to the 200x200 [Container] below
                        child: BackdropFilter(
                          filter: ui.ImageFilter.blur(
                            sigmaX: 5.0,
                            sigmaY: 5.0,
                          ),
                          child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    decoration:
                                        BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(8)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Flutter Live",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                        ),
                                        Text("Dream Walker")
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  IconButton(
                                    icon: Icon(
                                      Icons.play_arrow,
                                      size: 32,
                                    ),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.skip_next,
                                      size: 32,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
