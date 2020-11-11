import 'package:flutter/material.dart';

class DateAppHomePage extends StatefulWidget {
  @override
  _DateAppHomePageState createState() => _DateAppHomePageState();
}

class _DateAppHomePageState extends State<DateAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Placeholder(),
          ),
          Expanded(
            flex: 20,
            child: Column(
              children: [
                Expanded(
                  child: Placeholder(),
                ),
                Expanded(
                  child: Placeholder(),
                )
              ],
            )

          ),

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 84,
          child: Row(
            children: [],
          ),
        ),
      ),
    );
  }
}



















