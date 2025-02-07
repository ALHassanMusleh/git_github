import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/calcultor/calculator_screen.dart';
import 'package:flutter_basics/screens/counter/counter_screen.dart';
import 'package:flutter_basics/screens/game_board/game_board.dart';
import 'package:flutter_basics/screens/home/home_screen.dart';
import 'package:flutter_basics/screens/login/login.dart';
import 'package:flutter_basics/screens/register/register.dart';

main() {
  List<String> names = ['ahmed', 'hassan', 'mohammed'];
  names[1]; // hassan
  Map<String, int> map = {'ahmed': 40, 'hassan': 55, 'mohammed': 14};
  map['ahmed']; //40
  runApp(MyApp());
}

/// Added comments to new commit
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        LoginScreen.routeName: (_) => LoginScreen(),
        RegisterScreen.routeName: (_) => RegisterScreen(),
        CounterScreen.routeName: (_) => CounterScreen(),
        CalculatorScreen.routeName: (_) => CalculatorScreen(),
        GameBoard.routeName: (_) => GameBoard(),
      },
      initialRoute: GameBoard.routeName,
    );
  }
}

/// Session 1
// Color purple = Color(0xff781fa9);
// TextStyle defaultSAtyle = TextStyle(
//   fontSize: 25,
//   color: Colors.white,
// );
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Title',
//             style: TextStyle(
//               fontSize: 18,
//               color: Colors.green,
//             ),
//           ),
//           elevation: 0,
//           // leading: Icon(
//           //   Icons.arrow_back,
//           // ),
//           actions: [
//             Icon(
//               Icons.phone,
//             ),
//             Icon(
//               Icons.arrow_back,
//             ),
//           ],
//           centerTitle: true,
//         ),
//         drawer: Drawer(),
//         floatingActionButton: FloatingActionButton(
//           onPressed: null,
//         ),
//         body: Column(
//           children: [
//             Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     padding: EdgeInsets.symmetric(
//                       vertical: 18,
//                     ),
//                     color: purple,
//                     child: Text(
//                       'Magazines',
//                       style: defaultSAtyle,
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   width: 4,
//                 ),
//                 Expanded(
//                   child: Container(
//                     padding: EdgeInsets.symmetric(
//                       vertical: 18,
//                     ),
//                     color: purple,
//                     child: Text(
//                       'News',
//                       style: defaultSAtyle,
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Stack(
//                             alignment: Alignment.bottomRight,
//                             children: [
//                               Image.asset("assets/images/السيارات.jpg"),
//                               Container(
//                                 color: Colors.red,
//                                 padding: EdgeInsets.all(10),
//                                 margin: EdgeInsets.all(10),
//                                 child: Text('Cars'),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Stack(
//                             alignment: Alignment.bottomRight,
//                             children: [
//                               Image.asset("assets/images/السيارات.jpg"),
//                               Container(
//                                 padding: EdgeInsets.all(10),
//                                 color: Colors.red,
//                                 margin: EdgeInsets.all(10),
//                                 child: Text('Cars'),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Stack(
//                             alignment: Alignment.bottomRight,
//                             children: [
//                               Image.asset("assets/images/السيارات.jpg"),
//                               Container(
//                                 color: Colors.red,
//                                 padding: EdgeInsets.all(10),
//                                 margin: EdgeInsets.all(10),
//                                 child: Text('Cars'),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Stack(
//                             alignment: Alignment.bottomRight,
//                             children: [
//                               Image.asset("assets/images/السيارات.jpg"),
//                               Container(
//                                 padding: EdgeInsets.all(10),
//                                 color: Colors.red,
//                                 margin: EdgeInsets.all(10),
//                                 child: Text('Cars'),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Stack(
//                             alignment: Alignment.bottomRight,
//                             children: [
//                               Image.asset("assets/images/السيارات.jpg"),
//                               Container(
//                                 color: Colors.red,
//                                 padding: EdgeInsets.all(10),
//                                 margin: EdgeInsets.all(10),
//                                 child: Text('Cars'),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Stack(
//                             alignment: Alignment.bottomRight,
//                             children: [
//                               Image.asset("assets/images/السيارات.jpg"),
//                               Container(
//                                 padding: EdgeInsets.all(10),
//                                 color: Colors.red,
//                                 margin: EdgeInsets.all(10),
//                                 child: Text('Cars'),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Stack(
//                             alignment: Alignment.bottomRight,
//                             children: [
//                               Image.asset("assets/images/السيارات.jpg"),
//                               Container(
//                                 color: Colors.red,
//                                 padding: EdgeInsets.all(10),
//                                 margin: EdgeInsets.all(10),
//                                 child: Text('Cars'),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Stack(
//                             alignment: Alignment.bottomRight,
//                             children: [
//                               Image.asset("assets/images/السيارات.jpg"),
//                               Container(
//                                 padding: EdgeInsets.all(10),
//                                 color: Colors.red,
//                                 margin: EdgeInsets.all(10),
//                                 child: Text('Cars'),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Stack(
//                             alignment: Alignment.bottomRight,
//                             children: [
//                               Image.asset("assets/images/السيارات.jpg"),
//                               Container(
//                                 color: Colors.red,
//                                 padding: EdgeInsets.all(10),
//                                 margin: EdgeInsets.all(10),
//                                 child: Text('Cars'),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Stack(
//                             alignment: Alignment.bottomRight,
//                             children: [
//                               Image.asset("assets/images/السيارات.jpg"),
//                               Container(
//                                 padding: EdgeInsets.all(10),
//                                 color: Colors.red,
//                                 margin: EdgeInsets.all(10),
//                                 child: Text('Cars'),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Stack(
//                             alignment: Alignment.bottomRight,
//                             children: [
//                               Image.asset("assets/images/السيارات.jpg"),
//                               Container(
//                                 color: Colors.red,
//                                 padding: EdgeInsets.all(10),
//                                 margin: EdgeInsets.all(10),
//                                 child: Text('Cars'),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Stack(
//                             alignment: Alignment.bottomRight,
//                             children: [
//                               Image.asset("assets/images/السيارات.jpg"),
//                               Container(
//                                 padding: EdgeInsets.all(10),
//                                 color: Colors.red,
//                                 margin: EdgeInsets.all(10),
//                                 child: Text('Cars'),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       children: [
//                         Expanded(
//                           child: Stack(
//                             alignment: Alignment.bottomRight,
//                             children: [
//                               Image.asset("assets/images/السيارات.jpg"),
//                               Container(
//                                 color: Colors.red,
//                                 padding: EdgeInsets.all(10),
//                                 margin: EdgeInsets.all(10),
//                                 child: Text('Cars'),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 4,
//                         ),
//                         Expanded(
//                           child: Stack(
//                             alignment: Alignment.bottomRight,
//                             children: [
//                               Image.asset("assets/images/السيارات.jpg"),
//                               Container(
//                                 padding: EdgeInsets.all(10),
//                                 color: Colors.red,
//                                 margin: EdgeInsets.all(10),
//                                 child: Text('Cars'),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

/// Containers Widgets
/// Row , Column , Stack -> more Widget

/// Row
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// crossAxisAlignment: CrossAxisAlignment.end,
// children: [
// Text(
// 'First',
// ),
// Text(
// 'Second',
// ),
// Text(
// 'Third',
// ),
// Text(
// 'Forth',
// ),
// ],
// ),

/// Stack
// Stack(
//             alignment: Alignment.center,
//             children: [
//               Container(
//                 width: 400,
//                 height: 400,
//                 color: Colors.black,
//               ),
//               Container(
//                 width: 300,
//                 height: 300,
//                 color: Colors.green,
//               ),
//               Container(
//                 width: 200,
//                 height: 200,
//                 color: Colors.yellow,
//               ),
//               Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.red,
//               ),
//             ],
//           )

/// Spacing -> margin , padding
// Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(20), // margin for child
//                 child: Container(
//                   margin: EdgeInsets.all(20),
//                   color: Colors.red,
//                   child: Text('First'),
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.all(20),
//                 color: Colors.blue,
//                 child: Text('Secoond'),
//               ),
//             ],
//           ),

/// Images
//  Row(
//           children: [
//             Container(
//               child: Image.asset('assets/images/السيارات.jpg'),
//             ),
//           ],
//         )
