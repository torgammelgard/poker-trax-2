import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import './Session.dart';
import './SessionListView.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Poker Trax 2'),
      ),
      body: Center(
          child: Column(children: [
            Expanded(
              child: SessionListView(),
            ),
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Session session = Session(result: 1, location: 'dummy');
          Firestore.instance.collection('sessions')
              .add(session.getMap())
              .catchError((e) {
            print(e);
          });
        },
        tooltip: 'Add session',
        child: Icon(Icons.add),
      ),
    );
  }
}
