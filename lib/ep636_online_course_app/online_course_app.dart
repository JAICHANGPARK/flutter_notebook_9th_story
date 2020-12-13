import 'package:flutter/material.dart';

class OnlineCourseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) {
          return OnlineCourseMainPage()
        }
      },
    );
  }
}
