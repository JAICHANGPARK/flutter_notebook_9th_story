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
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 500), //You can Replace this with your desired WIDTH and HEIGHT
              painter: RPSCustomPainter(),
            ),
          ),

          Positioned(
            left: 16,
            right: 16,
            bottom: 0,
            top: 280,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://ouch-cdn.icons8.com/thumb/535/abbc33d2-cb5a-400e-8e5d-a82498747ad8.png",
                  ),
                  fit: BoxFit.fitHeight
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = new Paint()
      ..color = Color.fromARGB(255, 29, 80, 34)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.38;

    Path path = Path();
    path.moveTo(0,0);
    path.lineTo(0,size.height*0.46);
    path.quadraticBezierTo(size.width*0.45,size.height*0.60,size.width*0.61,size.height*0.58);
    path.quadraticBezierTo(size.width*0.72,size.height*0.57,size.width,size.height*0.32);
    path.lineTo(size.width,0);
    path.lineTo(size.width*0.03,0);
    path.lineTo(0,0);
    path.close();


    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

