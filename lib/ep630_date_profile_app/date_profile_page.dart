import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
            flex: 7,
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
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2019/03/04/04/52/asian-4033333_960_720.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2019/03/04/04/52/asian-4033333_960_720.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2019/03/04/04/52/asian-4033333_960_720.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 16,
                          child: Center(
                            child: SmoothPageIndicator(
                              count: 4,
                              controller: _pageController,
                              effect: ExpandingDotsEffect(
                                  activeDotColor: Colors.pink[200], dotColor: Colors.white, dotHeight: 6, dotWidth: 16),
                            ),
                          ),
                        )
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
            child: Container(
              color: Colors.black,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: CircularPercentIndicator(
                      radius: 84,
                      percent: 0.7,
                      progressColor: Colors.pink[100],
                      center: Text(
                        "75.0%",
                        style: TextStyle(color: Colors.pink[100]),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Dream, ??",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.white,
                            child: Text("5`10``"),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.pink[100],
                      foregroundColor: Colors.black,
                      child: Icon(
                        Icons.favorite_border,
                        size: 42,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore "
                    "et dolore magna aliqua.",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Ut enim ad minim veniam,"
                    " quis nostrud exercitation ullamco "
                    "laboris nisi ut aliquip ex ea commodo consequat.",
                    style: TextStyle(fontSize: 16),
                  ),
                  Container(
                    height: 48,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          color: Colors.black,
                          child: Text("friendly"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
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
