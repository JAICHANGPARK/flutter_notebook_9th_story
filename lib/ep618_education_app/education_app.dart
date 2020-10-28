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
      ..color = Color.fromARGB(255, 33, 73, 10)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path = Path();
    path.moveTo(size.width*0.07,size.height*0.10);
    path.lineTo(size.width*0.07,size.height*0.40);
    path.quadraticBezierTo(size.width*0.26,size.height*0.54,size.width*0.36,size.height*0.58);
    path.cubicTo(size.width*0.42,size.height*0.60,size.width*0.52,size.height*0.64,size.width*0.57,size.height*0.64);
    path.cubicTo(size.width*0.63,size.height*0.64,size.width*0.75,size.height*0.59,size.width*0.79,size.height*0.54);
    path.quadraticBezierTo(size.width*0.82,size.height*0.53,size.width*0.86,size.height*0.40);
    path.lineTo(size.width*0.86,size.height*0.10);
    path.lineTo(size.width*0.07,size.height*0.10);
    path.close();


    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

