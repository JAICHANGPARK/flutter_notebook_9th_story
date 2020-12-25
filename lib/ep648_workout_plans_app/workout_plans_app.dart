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
