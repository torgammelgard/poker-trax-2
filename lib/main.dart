import 'package:flutter/material.dart';
import 'package:poker_trax_2/SessionListTile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Poker Trax 2',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          accentColor: Colors.redAccent,
        ),
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text('Poker Trax 2'),
            ),
            body: Center(
                child: Column(children: [
              Expanded(
                  child: ListView(
                children: <Widget>[
                  SessionListTile(),
                  SessionListTile(),
                  SessionListTile(),
                ],
              ))
            ]))));
  }
}
