import 'package:flutter/material.dart';


class FilterSizeWidget extends StatefulWidget {

  @override
  _FilterSizeWidgetState createState() => _FilterSizeWidgetState();
}

class _FilterSizeWidgetState extends State<FilterSizeWidget> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
       
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
            "XXS",
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
