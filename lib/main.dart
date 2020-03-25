import 'package:flutter/material.dart';
import 'package:stopcovidapp/Pages/intro_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stop Covid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IntroSlider(),
    );
  }
}

