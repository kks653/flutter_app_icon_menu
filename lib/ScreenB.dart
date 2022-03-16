import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("Go to Screen A"),
              onPressed: () {},
            ),
            ElevatedButton(
              child: Text("Go to Screen C"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
