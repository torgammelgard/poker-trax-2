import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

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
        home: ScopedModel<TestModel>(
            model: TestModel(),
            child: Scaffold(
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
                        child: ScopedModelDescendant<TestModel>(
                          builder: (context, child, model) =>
                              Text(model.counter.toString()),
                        ))
                  ])),
              floatingActionButton: ScopedModelDescendant<TestModel>(
                builder: (context, child, model) =>
                    FloatingActionButton(
                      onPressed: () {
                        model.increment();
                      },
                      tooltip: 'Increment',
                      child: Icon(Icons.add),
                    ),
              ),
            )));
  }
}

class TestModel extends Model {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    print(_counter);
    notifyListeners();
  }
}
