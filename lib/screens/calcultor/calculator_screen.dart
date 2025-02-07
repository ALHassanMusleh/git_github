import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/calcultor/calculator_button.dart';

class CalculatorScreen extends StatefulWidget {
  static const String routeName = "CalculatorScreen";
  CalculatorScreen({super.key});

  @override
  State createState() {
    return CalculatorState();
  }
}

class CalculatorState extends State {
  String result = "";
  String lhs = "";
  String savedOperator = "";

  @override
  Widget build(BuildContext context) {
    print('build method');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      result,
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  digit: "7",
                  onClick: onClick,
                ),
                CalculatorButton(
                  digit: "8",
                  onClick: onClick,
                ),
                CalculatorButton(
                  digit: "9",
                  onClick: onClick,
                ),
                CalculatorButton(
                  digit: "+",
                  onClick: onOperatorClick,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  digit: "4",
                  onClick: onClick,
                ),
                CalculatorButton(
                  digit: "5",
                  onClick: onClick,
                ),
                CalculatorButton(
                  digit: "6",
                  onClick: onClick,
                ),
                CalculatorButton(
                  digit: "-",
                  onClick: onOperatorClick,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  digit: "1",
                  onClick: onClick,
                ),
                CalculatorButton(
                  digit: "2",
                  onClick: onClick,
                ),
                CalculatorButton(
                  digit: "3",
                  onClick: onClick,
                ),
                CalculatorButton(
                  digit: "x",
                  onClick: onOperatorClick,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  digit: ".",
                  onClick: onClick,
                ),
                CalculatorButton(
                  digit: "0",
                  onClick: onClick,
                ),
                CalculatorButton(
                  digit: "=",
                  onClick: onEqual,
                ),
                CalculatorButton(
                  digit: "/",
                  onClick: onOperatorClick,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onClick(String digit) {
    if (result.contains('.')) return;
    result += digit;
    print('Clicked');
    setState(() {});
  }

  void onOperatorClick(String operator) {
    if (savedOperator.isEmpty) {
      lhs = result;
      savedOperator = operator;
    } else {
      // if(result.isEmpty) return;
      lhs = calculate(lhs, savedOperator, result);
      savedOperator = operator;
    }
    result = "";
    setState(() {});
    print("onOperator click : lhs $lhs , saved operator $savedOperator");
  }

  String calculate(String lhs, String operator, String rhs) {
    double number1 = double.parse(lhs);
    double number2 = double.parse(rhs);
    if (operator == "+") {
      return "${number1 + number2}";
    } else if (operator == "-") {
      return "${number1 - number2}";
    } else if (operator == "x") {
      return "${number1 * number2}";
    } else {
      return "${number1 / number2}";
    }
  }

  void onEqual(_) {
    result = calculate(lhs, savedOperator, result);
    lhs = "";
    savedOperator = "";
    setState(() {});
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
