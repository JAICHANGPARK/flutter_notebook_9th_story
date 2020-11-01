import 'package:flutter/material.dart';

class HomeMainPage extends StatefulWidget {
  @override
  _HomeMainPageState createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.21), blurRadius: 10, spreadRadius: 10)]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                      ),
                    ),
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 16, ),
                  child: Text(
                    "Professionals",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                )),
            Expanded(
                flex: 20,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridView.builder(
                    itemCount: 50,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1.3, crossAxisSpacing: 4, mainAxisSpacing: 4),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 2, blurRadius: 4)
                            ]),
                        padding: EdgeInsets.all(4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 3,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2014/11/29/19/33/bald-eagle-550804_960_720.jpg",
                                          ),
                                        )),
                                    Expanded(
                                      flex: 4,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 3,
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 14,
                                                ),
                                                Text(
                                                  "4.2",
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    child: Padding(
                                                  padding: const EdgeInsets.all(3.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey,
                                                        borderRadius: BorderRadius.circular(4),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                              "https://cdn.pixabay.com/photo/2019/10/28/21/21/halloween-4585684_960_720.jpg",
                                                            ),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                )),
                                                Expanded(
                                                    child: Padding(
                                                  padding: const EdgeInsets.all(3.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey,
                                                        borderRadius: BorderRadius.circular(4),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                              "https://cdn.pixabay.com/photo/2020/05/07/19/09/bush-5142820__340.jpg",
                                                            ),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                )),
                                                Expanded(
                                                    child: Padding(
                                                  padding: const EdgeInsets.all(3.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey,
                                                        borderRadius: BorderRadius.circular(4),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                              "https://cdn.pixabay.com/photo/2020/10/11/09/04/peak-5645235_960_720.jpg",
                                                            ),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                )),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    "Dreamwalker",
                                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                )),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: MaterialButton(
                                    color: Colors.yellow,
                                    onPressed: () {},
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Icon(
                                              Icons.mail_outline,
                                              size: 18,
                                            ),
                                          ),
                                          Text(
                                            "Contact",
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      );
                    },
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
