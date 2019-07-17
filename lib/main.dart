import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './Counter.dart';
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
        home: ChangeNotifierProvider<Counter>(
          builder: (_) => Counter(0),
          child: HomePage(),
        ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
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
            Expanded(
              child: Text(counter.getCounter().toString()),
            )
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
