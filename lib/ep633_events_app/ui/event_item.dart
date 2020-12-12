import 'package:flutter/material.dart';


class EventCardItem extends StatefulWidget {
  @override
  _EventCardItemState createState() => _EventCardItemState();
}

class _EventCardItemState extends State<EventCardItem> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 240,
      // decoration: BoxDecoration(
      //   color: Colors.grey,
      // ),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 4),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(9),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2015/09/22/12/21/rudolph-951494_960_720.jpg"),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Positioned(
                        left: 8,
                        top: 8,
                        child: Container(
                          height: 64,
                          width: 58,
                          decoration: BoxDecoration(
                              color: Colors.white, borderRadius: BorderRadius.circular(9)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("DEC", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),),
                              Text("28", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),)
                            ],
                          ),
                        )),
                  ],
                ),
              )),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column
              (
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Black Laughs", style: TextStyle(
                    fontSize: 20
                ),),
                Text("Matter Virtual", style: TextStyle(
                    fontSize: 20
                ),),
                Text("Comedy Show live", style: TextStyle(
                    fontSize: 20
                ),),
                Spacer(),

                Text("By Dreamwalker", style: TextStyle(
                    fontSize: 12
                ),),
                Spacer(),
                Text("10.6 km away", style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                ),),
                Spacer(),
                MaterialButton(onPressed: () {  },
                  child: Text("Tickets \$30", style: TextStyle(
                      color: Colors.white
                  ),),

                  color: Colors.deepOrange,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),)
              ],
            ),
          )),
        ],
      ),
    );
  }
}
