import 'package:flutter/material.dart';
import 'package:flutter_app_icon_menu/ScreenA.dart';
import 'package:flutter_app_icon_menu/ScreenB.dart';
import 'package:flutter_app_icon_menu/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (_) => ScreenA(),
        '/b' : (_) => ScreenB(),
        '/c' : (_) => ScreenC(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}