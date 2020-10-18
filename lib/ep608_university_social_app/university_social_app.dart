import 'package:flutter/material.dart';

import 'university_social_main_page.dart';

class UniversitySocialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: [
          MaterialPage(
            key: ValueKey("HomePage"),
            child: UniversitySocialMainPage()
          )
        ],
        onPopPage: (route, result){
          print(route.toString());
          print(result.toString());
          return route.didPop(result);
        },
      )
    );
  }
}
