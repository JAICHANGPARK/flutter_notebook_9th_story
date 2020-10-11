import 'package:flutter/material.dart';

class DiscoveryHomePage extends StatefulWidget {
  @override
  _DiscoveryHomePageState createState() => _DiscoveryHomePageState();
}

class _DiscoveryHomePageState extends State<DiscoveryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 64,
        width: 64,
        decoration: BoxDecoration(
          color: Colors.indigo,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 4),
        ),
        child: Center(
          child: Icon(Icons.add, size: 38,
          color: Colors.white,),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.video),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.home),
                onPressed: (){},
              ),
              IconButton(
                icon: Icon(Icons.home),
                onPressed: (){},
              )
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),



      ),
      body: SingleChildScrollView(
        child: Column(
          children: [


          ],
        ),
      ),
    );
  }
}















