import 'package:flutter/material.dart';


class FilterSizeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
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
