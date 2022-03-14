import 'package:flutter/material.dart';
import 'package:flutter_app_icon_menu/ScreenA.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar icon menu"),
        centerTitle: true,
        elevation: 0.0,
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () {
        //     print("menu button is clicked");
        //   },
        // ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print("Shopping cart button is clicked");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Search button is clicked");
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/angrybird.png"),
                backgroundColor: Colors.transparent,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage("assets/circleprofile.png"),
                  backgroundColor: Colors.transparent,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage("assets/circleprofile.png"),
                //   backgroundColor: Colors.transparent,
                // ),
              ],
              accountName: Text("ANGRY BIRD"),
              accountEmail: Text("abc123@gmail.com"),
              onDetailsPressed: () {
                print("Arrow is clicked");
              },
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0))),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text("Home"),
              onTap: () {
                print("Home is clicked");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text("Setting"),
              onTap: () {
                print("Setting is clicked");
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text("Q & A"),
              onTap: () {
                print("Q & A is clicked");
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // FloatingActionButton(onPressed: () =>
            // {
            // }),
            ScreenA(), // TODO: 에러 고쳐야함
          ],
        ),
      ),
    );
  }
}