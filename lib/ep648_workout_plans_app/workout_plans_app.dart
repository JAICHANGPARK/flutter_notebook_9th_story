import 'package:flutter/material.dart';

class WorkoutPlansApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        "/": (context) => WorkoutEnterPage(),
        "/main": (context) => WorkoutMainPage(),
      },
    );
  }
}

class WorkoutEnterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(child: Placeholder()),
          Positioned(
            child: Placeholder(),
            left: 16,
            right: 16,
            bottom: 16,
          ),
        ],
      ),
    );
  }
}

class WorkoutMainPage extends StatefulWidget {
  @override
  _WorkoutMainPageState createState() => _WorkoutMainPageState();
}

class _WorkoutMainPageState extends State<WorkoutMainPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
