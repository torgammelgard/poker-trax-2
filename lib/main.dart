import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:poker_trax_2/AddSession.dart';
import 'package:scoped_model/scoped_model.dart';

import 'SessionListView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
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
                builder: (context, child, model) => FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => AddSession()));
                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
              ),
            )));
  }

  void show_Simple_Flushbar(BuildContext context) {
    Flushbar(
      // There is also a messageText property for when you want to
      // use a Text widget and not just a simple String
      message: 'Hello from a Flushbar',
      // Even the button can be styled to your heart's content
      mainButton: FlatButton(
        child: Text(
          'Click Me',
          style: TextStyle(color: Theme.of(context).accentColor),
        ),
        onPressed: () {
          print("Simple snackbar example");
        },
      ),
      duration: Duration(seconds: 3),
      // Show it with a cascading operator
    )..show(context);
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
