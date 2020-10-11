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
          color: Colors.red
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
