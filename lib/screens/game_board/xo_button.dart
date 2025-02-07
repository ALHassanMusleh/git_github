import 'package:flutter/material.dart';

class XOButton extends StatelessWidget {
  final String symbol;
  final int index;
  final Function onClick;
  const XOButton(
      {super.key,
      required this.symbol,
      required this.onClick,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(4),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          onPressed: () {
            onClick(index);
          },
          child: Text(
            symbol,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }

  // void onClick(){
  //   print('Hello');
  // }
}
