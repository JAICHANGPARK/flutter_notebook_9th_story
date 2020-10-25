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
                      icon: Icon(Icons.opacity), onPressed: () {  },
                    ),
                    IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.search), onPressed: () {  },
                    ),
                    IconButton(
                      color: Colors.white,
                      icon: Icon(Icons.menu), onPressed: () {  },
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
                    flex:1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    
                                  ),
                                ]
                              ),
                            ),
                          ),
                          Expanded(
                            child: Placeholder(),
                          ),
                          Expanded(
                            child: Placeholder(),
                          ),
                          Expanded(
                            child: Placeholder(),
                          )
                        ],
                      ),
                    )
                  ),
                  Expanded(
                    flex: 10,
                    child: Placeholder(),
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
}
