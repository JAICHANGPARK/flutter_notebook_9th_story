import 'package:flutter/material.dart';

class RhythmMainPage extends StatefulWidget {
  @override
  _RhythmMainPageState createState() => _RhythmMainPageState();
}

class _RhythmMainPageState extends State<RhythmMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
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
                  Expanded(flex: 2,child: Column(
                    children: [
                      Expanded(child: Placeholder()),
                      Expanded(child: Placeholder()),
                      Expanded(child: Placeholder()),
                    ],
                  )),
                  Divider(
                    color: Colors.black,
                    thickness: 1.5,
                  ),
                  Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Expanded(child: Placeholder()),
                          Expanded(child: Placeholder()),
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
                decoration: BoxDecoration(color: Colors.grey),
              )),
        ],
      ),
    );
  }
}
