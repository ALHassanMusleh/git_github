import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = 'RegisterScreen';

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text('Home Screen')),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Login Screen')),
        ],
      ),
    );
  }
}
