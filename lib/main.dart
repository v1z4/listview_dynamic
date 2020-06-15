import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

const String lorem =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Listview Dynamic Demo',
      home: ListPage(),
    );
    // return MaterialApp(
    //   title: 'Listview Dynamic Demo',
    //   home: BoardsPage(),
    // );
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  ListPageState createState() => ListPageState();
}

class ListPageState extends State<ListPage> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var rng = new Random();
    var content = CupertinoScrollbar(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 200,
        itemBuilder: (context, index) {
          return Container(
              padding: EdgeInsets.all(10.0),
              // child: Text(randomString(rng.nextInt(400)),
              child: Text(index % 2 == 0 ? "Small string" : lorem,
                  style: TextStyle(color: Colors.yellow)));
        },
      ),
    );

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        heroTag: "listview1",
        transitionBetweenRoutes: false,
      ),
      child: Center(child: content),
    );
  }
}
