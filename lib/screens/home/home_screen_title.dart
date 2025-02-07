import 'package:flutter/material.dart';

class HomeScreenTitle extends StatelessWidget {
  String text;
  HomeScreenTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    Color purple = Color(0xff781fa9);
    TextStyle defaultSAtyle = TextStyle(
      fontSize: 25,
      color: Colors.white,
    );
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 18,
        ),
        color: purple,
        child: Text(
          '$text',
          style: defaultSAtyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
