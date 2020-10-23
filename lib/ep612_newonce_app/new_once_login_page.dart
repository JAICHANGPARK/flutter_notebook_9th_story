import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewOnceLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
                flex: 4,
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
                              border: Border.all(color: Colors.black, width: 2),
                              boxShadow: [BoxShadow(color: Colors.black, spreadRadius: 1, offset: Offset(1, 2))]),
                          child: Row(
                            children: [
                              Expanded(
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
                              Expanded(
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
                              Expanded(
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 11,
              child: Placeholder(),
            ),
            Expanded(
              flex: 3,
              child: Placeholder(),
            ),
            Expanded(
              flex: 2,
              child: Placeholder(),
            ),
          ],
        ),
      ),
    );
  }
}
