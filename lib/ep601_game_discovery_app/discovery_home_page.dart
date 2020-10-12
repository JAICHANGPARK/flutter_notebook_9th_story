import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class DiscoveryHomePage extends StatefulWidget {
  @override
  _DiscoveryHomePageState createState() => _DiscoveryHomePageState();
}

class _DiscoveryHomePageState extends State<DiscoveryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 64,
        width: 64,
        decoration: BoxDecoration(
          color: Colors.indigo,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 4),
        ),
        child: Center(
          child: Icon(
            Icons.add,
            size: 38,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.personal_video),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person_outlined),
                onPressed: () {},
              )
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.indigo[50],
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 8,
                              child: TextField(),
                            ),
                            Expanded(
                              flex: 2,
                              child: CircleAvatar(),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Badge(
                          child: Icon(Icons.notifications_active_outlined),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




























