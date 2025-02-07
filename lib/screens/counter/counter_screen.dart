import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  static const String routeName = "CounterScreen";
  CounterScreen({super.key});

  @override
  State createState() {
    return CounterState();
  }
}

class CounterState extends State {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('build method');
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            counter++;
            setState(() {});
            print(counter);
          },
          child: Text("$counter"),
        ),
      ),
    );
  }
}

// int counter = 0;
//
// @override
// Widget build(BuildContext context) {
//   print('Hello build');
//   return Scaffold(
//     appBar: AppBar(
//       title: Text('Calculator'),
//     ),
//     body: Center(
//       child: ElevatedButton(
//         onPressed: () {
//           counter++;
//           print(counter);
//         },
//         child: Text("$counter"),
//       ),
//     ),
//   );
// }
