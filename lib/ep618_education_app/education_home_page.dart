import 'package:flutter/material.dart';

class EducationHomePage extends StatefulWidget {
  @override
  _EducationHomePageState createState() => _EducationHomePageState();
}

class _EducationHomePageState extends State<EducationHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 24,
            right: 24,
            top: 48,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.menu),
                    iconSize: 42,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    iconSize: 42,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 64,
            child: Image.network(
              "https://ouch-cdn.icons8.com/preview/515/d0852353-9864-4c75-8e0c-dba0f02755b2.png",
              fit: BoxFit.fitHeight,
              height: 180,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 260,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                  )),
              child: Stack(),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 320,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.brown[300],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                  )),
              child: Stack(),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 380,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.teal[100],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                  )),
              child: Stack(
                children: [
                  Positioned(
                    left: 48,
                    top: 0,
                    child: Container(
                      width: 294,
                      height: 64,
                      child: CustomPaint(
                        size: Size(294, 64), //You can Replace this with your desired WIDTH and HEIGHT
                        painter: RPSCustomPainter(),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 64, right: 24, top: 10),
                          child: Text(
                            "Get a consultation",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
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
      ..strokeWidth = 1;

    Path path = Path();
    path.moveTo(size.width*0.03,0);
    path.quadraticBezierTo(size.width*0.10,size.height*0.55,size.width*0.14,size.height*0.70);
    path.cubicTo(size.width*0.16,size.height*0.80,size.width*0.19,size.height*0.78,size.width*0.20,size.height*0.80);
    path.quadraticBezierTo(size.width*0.36,size.height*0.80,size.width*0.82,size.height*0.80);
    path.quadraticBezierTo(size.width*0.87,size.height*0.79,size.width*0.88,size.height*0.70);
    path.quadraticBezierTo(size.width*0.92,size.height*0.56,size.width*0.99,0);
    path.lineTo(size.width*0.03,0);
    path.close();


    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
















