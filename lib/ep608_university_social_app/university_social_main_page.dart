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
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 84,
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
                      child: Icon(Icons.arrow_back_rounded),
                    ),
                    Expanded(
                      child: Center(child: Text("Inbox"))
                    ),
                    Expanded(
                      child: Icon(Icons.info_outline),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 16,
              child: Container(
                height: 72,
                decoration: BoxDecoration( color: Colors.white,borderRadius: BorderRadius.circular(42),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey[50],
                    blurRadius: 2,
                    spreadRadius: 2,
                    offset: Offset(0, 4)
                  )
                ]),
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
                            borderRadius:
                                BorderRadius.only(topRight: Radius.circular(32), bottomRight: Radius.circular(32))),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
