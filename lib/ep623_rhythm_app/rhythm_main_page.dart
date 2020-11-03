import 'package:flutter/material.dart';
import 'dart:ui' as ui;

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
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Expanded(child: Row(
                            children: [
                              Text("EXPLORE", style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                              ),)
                            ],
                          )),
                          Expanded(
                              child: Container(
                            color: Colors.white,
                          )),
                          Expanded(child: Placeholder()),
                        ],
                      )),
                  Divider(
                    color: Colors.black,
                    thickness: 1.5,
                  ),
                  Expanded(
                      flex: 6,
                      child: Column(
                        children: [
                          Expanded(child: Placeholder()),
                          Expanded(
                              child: Container(
                            color: Colors.white,
                          )),
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
                child: Stack(
                  children: [
                    Container(
                      color: Colors.grey[200],
                    ),
                    Center(
                      child: ClipRect(
                        // <-- clips to the 200x200 [Container] below
                        child: BackdropFilter(
                          filter: ui.ImageFilter.blur(
                            sigmaX: 5.0,
                            sigmaY: 5.0,
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Flutter Live", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                      ),),
                                      Text("Dream Walker")
                                    ],
                                  ),
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(Icons.play_arrow, size: 32,),
                                  onPressed: () {  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.skip_next,  size: 32,),
                                  onPressed: () {  },
                                ),
                              ],
                            )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}







