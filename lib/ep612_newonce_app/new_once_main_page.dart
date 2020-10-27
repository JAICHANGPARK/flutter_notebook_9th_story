import 'package:flutter/material.dart';

class NewonceMainPage extends StatefulWidget {
  @override
  _NewonceMainPageState createState() => _NewonceMainPageState();
}

class _NewonceMainPageState extends State<NewonceMainPage> {
  num _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Text(
                      "Flutter Feed",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [BoxShadow(color: Colors.black, offset: Offset(1, 2), spreadRadius: 2)]),
                        child: Icon(Icons.keyboard_arrow_down),
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.opacity),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.menu),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 15,
              child: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _tabIndex = 0;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 4, top: 4, right: 4, left: 4),
                                  decoration: BoxDecoration(
                                      color: _tabIndex == 0 ? Colors.blueAccent : Colors.white,
                                      boxShadow: _tabIndex == 0
                                          ? [
                                              BoxShadow(color: Colors.black, offset: Offset(2, 4), spreadRadius: 2),
                                            ]
                                          : []),
                                  child: Center(
                                    child: Text(
                                      "ARTYKULY",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: _tabIndex == 0 ? Colors.white : Colors.black,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _tabIndex = 1;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 4, top: 4, right: 4, left: 4),
                                  decoration: BoxDecoration(
                                      color: _tabIndex == 1 ? Colors.blueAccent : Colors.white,
                                      boxShadow: _tabIndex == 1
                                          ? [
                                              BoxShadow(color: Colors.black, offset: Offset(2, 4), spreadRadius: 2),
                                            ]
                                          : []),
                                  child: Center(
                                    child: Text(
                                      "PODCASTY",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: _tabIndex == 1 ? Colors.white : Colors.black,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _tabIndex = 2;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 4, top: 4, right: 4, left: 4),
                                  decoration: BoxDecoration(
                                      color: _tabIndex == 2 ? Colors.blueAccent : Colors.white,
                                      boxShadow: _tabIndex == 2
                                          ? [
                                              BoxShadow(color: Colors.black, offset: Offset(2, 4), spreadRadius: 2),
                                            ]
                                          : []),
                                  child: Center(
                                    child: Text(
                                      "VIDEO",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: _tabIndex == 2 ? Colors.white : Colors.black,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _tabIndex = 3;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 4, top: 4, right: 4, left: 4),
                                  decoration: BoxDecoration(
                                      color: _tabIndex == 3 ? Colors.blueAccent : Colors.white,
                                      boxShadow: _tabIndex == 3
                                          ? [
                                              BoxShadow(color: Colors.black, offset: Offset(2, 4), spreadRadius: 2),
                                            ]
                                          : []),
                                  child: Center(
                                    child: Text(
                                      "ARTICLE",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: _tabIndex == 3 ? Colors.white : Colors.black,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(flex: 10, child: _buildListViewWidget(_tabIndex)),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: BottomAppBar(
            color: Colors.black,
            child: Container(
              height: 64,
            )),
      ),
    );
  }

  Widget _buildListViewWidget(int _tabIndex) {
    switch (_tabIndex) {
      case 0:
        return SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(16),
                height: MediaQuery.of(context).size.height / 2.2,
                child: Stack(
                  children: [
                    Positioned(
                      left: 16,
                      right: 16,
                      bottom: 0,
                      top: 16,
                      child: Container(
                        decoration:
                            BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black, width: 2)),
                      ),
                    ),
                    Positioned(
                      left: 8,
                      right: 8,
                      bottom: 8,
                      top: 8,
                      child: Container(
                        decoration:
                            BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black, width: 2)),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 16,
                      top: 0,
                      child: Container(
                        decoration:
                            BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black, width: 2)),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              top: 0,
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                                      child: Image.network(
                                        "https://cdn.pixabay.com/photo/2015/06/19/09/39/lonely-814631_960_720.jpg",
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua'),
                                          Row(
                                            children: [
                                              Text(
                                                "Flutter",
                                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text("Dreamwalker"),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                height: 48,
                                width: 48,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black, width: 1),
                                ),
                                child: Center(
                                  child: Icon(Icons.bookmark_border),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16,
                              bottom: 108,
                              child: Container(
                                height: 32,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.indigo,
                                  border: Border.all(color: Colors.black, width: 2),
                                ),
                                child: Center(
                                  child: Text(
                                    "Dart",
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex:5,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                image: DecorationImage(
                                  image: NetworkImage("https://cdn.pixabay.com/photo/2016/02/19/10/56/hip-hop-1209499__340.jpg"),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 8,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white)
                              ),
                              child: Column(
                                children: [
                                  Text("Kick Off"),
                                  Text("Dreamwalker Flutter Live Coding", style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),)
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Expanded(
                      flex:3,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Row(
                              children: [
                                Expanded(
                                  child:  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),

                                    ),
                                  ),
                                ),
                                Expanded(
                                  child:  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white)
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 8,
                            child:  Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white)
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      case 1:
        return Container();
      case 2:
        return Container();
      case 3:
        return Container();

      default:
        return Container();
        break;
    }
  }
}


































