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
                  Expanded(
                    flex: 10,
                    child: _buildListViewWidget(_tabIndex)
                  ),
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

  Widget _buildListViewWidget(int _tabIndex){

    switch(_tabIndex){

      case 0:
        return Container();
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



























