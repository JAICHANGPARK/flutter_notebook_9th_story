import 'package:flutter/material.dart';

class DiscoveryHomePage extends StatefulWidget {
  @override
  _DiscoveryHomePageState createState() => _DiscoveryHomePageState();
}

class _DiscoveryHomePageState extends State<DiscoveryHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 64,
        width: 64,
        decoration: BoxDecoration(
          color: Colors.indigo,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
        ),
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
