import 'package:flutter/material.dart';
import 'package:flutter_notebook_9th_story/ep612_newonce_app/new_once_main_page.dart';
import 'package:google_fonts/google_fonts.dart';

class NewOnceLoginPage extends StatefulWidget {
  @override
  _NewOnceLoginPageState createState() => _NewOnceLoginPageState();
}

class _NewOnceLoginPageState extends State<NewOnceLoginPage> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(child: SizedBox()),
                  Expanded(
                      child: Center(
                    child: Text(
                      "newonce",
                      style:
                          GoogleFonts.abrilFatface(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                  )),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 48, bottom: 16, top: 16, right: 24),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 2, offset: Offset(2, 2))]),
                      child: Center(
                        child: Icon(Icons.clear),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 3,
                          child: Text(
                            "Zaloz konto za pomoca",
                            style: GoogleFonts.abrilFatface(fontWeight: FontWeight.bold, fontSize: 26),
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 1),
                              boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 1, offset: Offset(1, 2))]),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 12,
                                          backgroundColor: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "FB",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 12,
                                          backgroundColor: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "GOOGLE",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          radius: 12,
                                          backgroundColor: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          "TWITTER",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Lub uzupelnij dene by zalozyc konto poprzez email:",
                        style: GoogleFonts.abrilFatface(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(border: Border.all(color: Colors.deepPurpleAccent, width: 2)),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (bool value) {
                            setState(() {
                              isCheck = value;
                            });
                          },
                        ),
                        Text("Lub uzupelnij dene by zalozyc konto poprzez email:"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => NewonceMainPage(),
                            ));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            boxShadow: [BoxShadow(color: Colors.black, offset: Offset(2, 3))]),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Masz juz konto? "),
                        Text("Zalohuj sie!"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
