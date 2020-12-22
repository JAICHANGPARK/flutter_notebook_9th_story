import 'package:flutter/material.dart';

class StyleFilterPage extends StatefulWidget {
  @override
  _StyleFilterPageState createState() => _StyleFilterPageState();
}

class _StyleFilterPageState extends State<StyleFilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          child: Icon(Icons.clear),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "FILTERS",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [

        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 8,
        child: Container(
          height: 72,
          child: Row(
            children: [
              Expanded(child: OutlineButton(
                child: Text("RESET"),
              )),
              Expanded(child: MaterialButton(
                color: Colors.black,
                textColor: Colors.white,
                child: Text("APPLY"),
              )),

            ],
          ),
        ),
      ),
    );
  }
}
