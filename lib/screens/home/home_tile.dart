import 'package:flutter/material.dart';

class HomeTile extends StatelessWidget {
  String imagePath;
  String title;
  HomeTile({required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Image.asset("$imagePath"),
        Container(
          color: Colors.red,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child: Text('$title'),
        ),

      ],
    );
  }
}
