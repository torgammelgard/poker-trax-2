import 'package:flutter/material.dart';

import 'SessionListView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Poker Trax 2',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          accentColor: Colors.pinkAccent,
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Poker Trax 2'),
          ),
          body: Center(
              child: Column(children: [
                Expanded(
                  child: SessionListView(),
                )
              ])),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('clicked');
            },
            child: Icon(Icons.add),
          ),
        ));
  }
}
