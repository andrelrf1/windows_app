import 'package:flutter/material.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void _nextScreen() {
    Navigator.pushReplacementNamed(context, '/LogIn');
  }

  Future<Timer> _splashTimer() async {
    var tempo = Duration(seconds: 5);
    return Timer(tempo, _nextScreen);
  }

  @override
  void initState() {
    super.initState();
    _splashTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Center(
          child: Image.asset(
            'assets/dart.png',
            height: 150,
            width: 150,
          ),
        ),
      ),
    );
  }
}
