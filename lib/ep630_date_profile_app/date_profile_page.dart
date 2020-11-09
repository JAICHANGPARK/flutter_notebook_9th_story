import 'package:flutter/material.dart';

class DateProfilePage extends StatefulWidget {
  @override
  _DateProfilePageState createState() => _DateProfilePageState();
}

class _DateProfilePageState extends State<DateProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                Positioned(
                  left: 16,
                  top: 24,
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: Colors.black
                    ),
                    child: Center(
                      child: Icon(Icons.clear),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Placeholder(),
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
