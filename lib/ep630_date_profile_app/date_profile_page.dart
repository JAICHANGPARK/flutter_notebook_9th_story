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
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.black
                    ),
                    child: Center(
                      child: Icon(Icons.clear, color: Colors.white
                        ,),
                    ),
                  ),
                )
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
                        onPressed: () {  },
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
