import 'package:flutter/material.dart';
import 'package:flutter_app_icon_menu/ScreenA.dart';
import 'package:flutter_app_icon_menu/ScreenB.dart';
import 'package:flutter_app_icon_menu/ScreenC.dart';
import 'package:flutter_app_icon_menu/drawer.dart';

void main() => runApp(MyApp()); // Everything starts here.

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("You have pushed the button this many times"),
              Text(
                "$count",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              // Checkbox(
              //     value: true,
              //     onChanged: (isChecked) {
              //       print("isChecked: $isChecked");
              //     },
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        count++;
                        print("counting: $count");
                      });
                    },
                  ),
                  SizedBox(width: 20,),
                  FloatingActionButton(
                    child: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        count--;
                        print("counting: $count");
                      });
                    },
                  ),
                ],
              ),

            ],
          ),
        ),

      )
    );
  }
}