import 'package:flutter/material.dart';

class DateAppHomePage extends StatefulWidget {
  @override
  _DateAppHomePageState createState() => _DateAppHomePageState();
}

class _DateAppHomePageState extends State<DateAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Placeholder(),
            ),
            Expanded(
              flex: 20,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                      flex: 8,
                      child:  Stack(
                        children: [
                           Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2019/03/04/04/52/asian-4033333_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ],

                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Placeholder(),
                    )
                  ],
                ),
              )

            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 84,
          child: Row(
            children: [],
          ),
        ),
      ),
    );
  }
}



















