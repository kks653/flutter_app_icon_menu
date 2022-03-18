import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen C"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text("Go to Screen A"),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ElevatedButton(
              child: Text("Go to Screen B"),
              onPressed: () {
                Navigator.pushNamed(context, '/b');
              },
            ),
          ],
        ),
      ),
    );
  }
}
