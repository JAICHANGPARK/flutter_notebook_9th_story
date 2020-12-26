import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkoutPlansApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        "/": (context) => WorkoutEnterPage(),
        "/main": (context) => WorkoutMainPage(),
      },
    );
  }
}

class WorkoutEnterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://cdn.pixabay.com/photo/2017/04/20/08/35/sport-2245029_960_720.jpg"),
                    fit: BoxFit.fitHeight)),
          )),
          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Become stronger with our workout plans",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
                Text(
                  "Our premade workout plans will help your become a better version of yourself",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  color: Colors.greenAccent,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => WorkoutMainPage()));
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 16),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 12),
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  color: Colors.white,
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Text(
                  "Become a coach",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ],
            ),
            left: 16,
            top: MediaQuery.of(context).size.height / 2,
            right: 16,
            bottom: 16,
          ),
        ],
      ),
    );
  }
}

class WorkoutMainPage extends StatefulWidget {
  @override
  _WorkoutMainPageState createState() => _WorkoutMainPageState();
}

class _WorkoutMainPageState extends State<WorkoutMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 140,
                child: Column(
                  children: [
                    Text("Thursday, November 26th", style: TextStyle(
                      color: Colors.grey,
                    ),),
                    Text("Let's crush it, Dream", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Container(
                      height: 58,
                      decoration: BoxDecoration(
                        color: Colors.white
                      ),
                      child: Row(
                        children: [

                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 240,
                child: Placeholder(),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 140,
                child: Placeholder(),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 240,
                child: Placeholder(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(height: 72,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              color: Colors.tealAccent,
              icon: Icon(Icons.home), onPressed: () {  },
            ),
            IconButton(
              color: Colors.tealAccent,
              icon: Icon(Icons.insert_chart), onPressed: () {  },
            ),
            IconButton(
              color: Colors.tealAccent,
              icon: Icon(Icons.calendar_today_outlined), onPressed: () {  },
            ),
            IconButton(
              color: Colors.tealAccent,
              icon: Icon(Icons.account_circle_outlined), onPressed: () {  },
            ),

          ],
        ),),
      ),
    );
  }
}















