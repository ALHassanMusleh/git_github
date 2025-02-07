import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/home/home_screen.dart';
import 'package:flutter_basics/screens/register/register.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'LoginScreen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
              },
              child: Text(
                'Home Screen',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RegisterScreen.routeName);
              },
              child: Text(
                'Register Screen',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
