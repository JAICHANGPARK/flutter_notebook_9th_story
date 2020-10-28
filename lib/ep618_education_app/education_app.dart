import 'package:flutter/material.dart';


class EducationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EducationSplashPage(),
    );
  }
}

class EducationSplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 16,
            right: 16,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://ouch-cdn.icons8.com/thumb/535/abbc33d2-cb5a-400e-8e5d-a82498747ad8.png",
                  ),
                  fit: BoxFit.cover
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
