import 'package:flutter/material.dart';


class FashionStartPage extends StatefulWidget {
  @override
  _FashionStartPageState createState() => _FashionStartPageState();
}

class _FashionStartPageState extends State<FashionStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: Row(
          children: [
            Icon(Icons.keyboard_arrow_down_rounded),
            Text("ENG")
          ],
      )
      ),
    );
  }
}