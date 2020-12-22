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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("SIZES"),
                  Row(
                    children: [
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey)
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 8,
        child: Container(
          height: 72,
          child: Row(
            children: [
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlineButton(
                  onPressed: () {  },
                  child: Text("RESET"),
                ),
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {  },
                  child: Text("APPLY"),
                ),
              )),

            ],
          ),
        ),
      ),
    );
  }
}
