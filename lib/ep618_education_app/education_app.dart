import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'education_home_page.dart';


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
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 180,
              child: CustomPaint(
                size: Size(MediaQuery.of(context).size.width, 240), //You can Replace this with your desired WIDTH and HEIGHT
                painter: RPSCustomPainter(),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 48,),
                      Text("Education",style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                      Text("In Europe",style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => EducationHomePage()
                            ));
                          },
                          child: Container(
                            height: 64,
                            width: 64,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.2)
                            ),
                            child: Center(
                              child: Icon(Icons.arrow_forward, color: Colors.white,
                              size: 32,),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
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
      ),
    );
  }
}
class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {

    Paint paint = new Paint()
      ..color = Color.fromARGB(255, 00, 45, 31)
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.38;

    Path path = Path();
    path.moveTo(0,0);
    path.quadraticBezierTo(0,size.height*0.27,0,size.height*0.36);
    path.cubicTo(size.width*0.14,size.height*0.43,size.width*0.49,size.height*0.52,size.width*0.68,size.height*0.50);
    path.cubicTo(size.width*0.79,size.height*0.50,size.width*0.97,size.height*0.37,size.width,size.height*0.30);
    path.quadraticBezierTo(size.width,size.height*0.23,size.width,0);
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



