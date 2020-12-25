import 'package:flutter/material.dart';


class WorkoutPlansApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) => WorkoutEnterPage(),
        "/main" : (context) => WorkoutMainPage(),

      },
    );
  }
}


class WorkoutEnterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
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

