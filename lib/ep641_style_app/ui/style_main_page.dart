import 'package:flutter/material.dart';

class StyleMainPage extends StatefulWidget {
  @override
  _StyleMainPageState createState() => _StyleMainPageState();
}

class _StyleMainPageState extends State<StyleMainPage> {
  num _pageIdx = 0;
  num _tabIdx = 0;
  List<String> tabTitle = ["Weekend", "Comfy", "Travel", "Meetings", "All"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back_ios),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "FLUTTER",
                                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 4),
                                  decoration:
                                      BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(16)),
                                  padding: EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                                  child: Text(
                                    "SHOW ABAILABLE",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                )
                              ],
                            ),
                            Icon(Icons.tune)
                          ],
                        ),
                      )),
                      Expanded(
                          child: ListView.builder(
                              itemCount: tabTitle.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                                  child: InkWell(
                                    onTap: () {
                                      print(_tabIdx);
                                      setState(() {
                                        _tabIdx = index;
                                      });
                                    },
                                    child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 8),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.grey),
                                          borderRadius: BorderRadius.circular(8),
                                          color: _tabIdx == index ? Colors.black : Colors.white,
                                        ),
                                        child: Center(
                                            child: Text(
                                          tabTitle[index],
                                          style: TextStyle(
                                            color: _tabIdx == index ? Colors.white : Colors.black,
                                          ),
                                        ))),
                                  ),
                                );
                              }))
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white, boxShadow: [BoxShadow(color: Colors.grey[500], offset: Offset(0, 2))]),
                )),
            Expanded(
                flex: 15,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Placeholder(),
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _pageIdx,
        onTap: (newPageIndex) {
          setState(() {
            _pageIdx = newPageIndex;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.open_in_browser), label: "BROWSE"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "WISHLIST"),
          BottomNavigationBarItem(icon: Icon(Icons.move_to_inbox), label: "MY BOX"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "PEOPLE"),
        ],
      ),
    );
  }
}
