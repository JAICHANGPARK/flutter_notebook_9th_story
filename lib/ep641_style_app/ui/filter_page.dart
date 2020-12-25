import 'package:flutter/material.dart';
import 'package:flutter_notebook_9th_story/ep641_style_app/ui/filter_size_widget.dart';

class StyleFilterPage extends StatefulWidget {
  @override
  _StyleFilterPageState createState() => _StyleFilterPageState();
}

class _StyleFilterPageState extends State<StyleFilterPage> {
  num _sizeSelected = 0;

  List<Color> colorList = [
    Colors.black,
    Colors.grey,
    Colors.white,
    Colors.brown[100],
    Colors.brown,
    Colors.indigo,
    Colors.purple,
    Colors.pink,
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
  ];

  List<String> silhouetteList = [
    "A-LINE",
    "FIT AND FLARE",
    "PENCIL",
    "SHIFT",
    "CIRCLE",
    "TUBE",
    "NONE",
  ];

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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("SIZES"),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _sizeSelected = 0;
                              });
                            },
                            child: Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.grey),
                                  color: _sizeSelected == 0 ? Colors.black : Colors.white),
                              child: Center(
                                child: Text(
                                  "XXS",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _sizeSelected = 1;
                              });
                            },
                            child: Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.grey),
                                  color: _sizeSelected == 1 ? Colors.black : Colors.white),
                              child: Center(
                                child: Text(
                                  "XS",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _sizeSelected = 2;
                              });
                            },
                            child: Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Text(
                                  "S",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _sizeSelected = 3;
                              });
                            },
                            child: Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Text(
                                  "M",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _sizeSelected = 4;
                              });
                            },
                            child: Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Text(
                                  "L",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _sizeSelected = 5;
                              });
                            },
                            child: Container(
                              height: 42,
                              width: 42,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: Center(
                                child: Text(
                                  "XL",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                child: ExpansionTile(
                  title: Text("COLOR"),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        child: GridView.count(
                            crossAxisCount: 8,
                            childAspectRatio: 0.95,
                            children: colorList
                                .map((e) => Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      child: Container(
                                        decoration: BoxDecoration(color: e, shape: BoxShape.circle),
                                      ),
                                    ))
                                .toList()),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                child: ExpansionTile(
                  title: Text("PRINT"),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        child: GridView.count(
                            crossAxisCount: 8,
                            childAspectRatio: 0.95,
                            children: colorList
                                .map((e) => Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      child: Container(
                                        decoration: BoxDecoration(color: e, shape: BoxShape.circle),
                                      ),
                                    ))
                                .toList()),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                child: ExpansionTile(
                  title: Text("SILHOUETTE"),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        child: GridView.count(
                            crossAxisCount: 3,
                            childAspectRatio: 4,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            children: silhouetteList
                                .map((e) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 4,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            border: Border.all(color: Colors.grey),
                                            borderRadius: BorderRadius.circular(16)),
                                        child: Center(
                                          child: Text(e),
                                        ),
                                      ),
                                    ))
                                .toList()),
                      ),
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
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlineButton(
                  onPressed: () {},
                  child: Text("RESET"),
                ),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
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
