import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  int index;

  TaskItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: index == 0 ? 8 : 4,
      shape: index != 0
          ? RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
              side: BorderSide(
              color: Colors.grey[400],
            ))
          : null,
      margin: EdgeInsets.only(bottom: 16, left: 4, right: 4),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Brands.Co Landing page\nIdea"),
                Text(
                  "Due Today\n14 Ocd",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 12),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "HIGH",
                      style: TextStyle(color: Colors.orange, fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.orange[50],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    child: Text(
                      "DESIGN",
                      style: TextStyle(color: Colors.teal, fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.teal[50],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.attach_file_outlined,
                  size: 16,
                ),
                Text("1"),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Dreamwalker",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                ),
                CircleAvatar(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
