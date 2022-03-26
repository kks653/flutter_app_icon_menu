import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("Go to Screen B"), // 스크린 B 텍스트
              onPressed: () {
                Navigator.pushNamed(context, '/b'); // context의 위치 중요
              },
            ),
            ElevatedButton(
              child: Text("Go to Screen C"), // 
              onPressed: () {
                Navigator.pushNamed(context, '/c'); //
              },
            ),
          ],
        ),
      ),
    );
  }
}