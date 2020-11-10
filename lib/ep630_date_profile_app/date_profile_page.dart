import 'package:flutter/material.dart';

class DateProfilePage extends StatefulWidget {
  @override
  _DateProfilePageState createState() => _DateProfilePageState();
}

class _DateProfilePageState extends State<DateProfilePage> {
  PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.pink,
                    ),
                    child: Stack(
                      children: [
                         Positioned(
                           left: 0,
                           right: 0,
                           top: 0,
                           bottom: 0,

                           child: PageView(
                            controller: _pageController,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage("https://cdn.pixabay.com/photo/2019/03/04/04/52/asian-4033333_960_720.jpg"),
                                        fit: BoxFit.cover
                                    )
                                ),
                              )
                            ],
                        ),
                         ),
                      ],

                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 24,
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(color: Colors.black),
                    child: Center(
                      child: Icon(
                        Icons.clear,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Placeholder(),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Text("Dream, ??"),
                      MaterialButton(
                        onPressed: () {},
                        child: Text("5`10``"),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    radius: 42,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Placeholder(),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          )
        ],
      ),
    );
  }
}
