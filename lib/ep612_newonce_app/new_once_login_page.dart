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
              flex: 2,
              child: Row(
                children: [
                  Expanded(child: SizedBox()),
                  Expanded(
                      child: Center(
                    child: Text(
                      "newonce",
                      style:
                          GoogleFonts.abrilFatface(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 24),
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
                flex: 3,
                child: Column(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Text(
                          "Zaloz konto za pomoca",
                          style: GoogleFonts.abrilFatface(
                           fontWeight: FontWeight.bold, fontSize: 26),
                        )),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Placeholder(),
                            ),
                            Expanded(
                              child: Placeholder(),
                            ),
                            Expanded(
                              child: Placeholder(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 7,
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
