import 'package:flutter/material.dart';
import 'screens/splash.dart';
//import 'screens/login/login.dart';
import 'screens/start/start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Windows App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash(),
      routes: <String, WidgetBuilder>{
        '/LogIn': (context) => Start(),
      },
    );
  }
}
