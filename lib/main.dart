import 'package:flutter/material.dart';
import 'package:thriftaja/screens/SplashScreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thriftaja',
      home: SplashScreen(),
    );
  }
}