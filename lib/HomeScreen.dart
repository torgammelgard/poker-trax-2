import 'package:easy_localization/easy_localization.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:poker_trax_2/AddSession.dart';

import 'SessionListView.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('title'.tr()),
      ),
      body: Center(
          child: Column(children: [
        Expanded(
          child: SessionListView(),
        ),
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddSession()));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void showSimpleFlushbar(BuildContext context) {
    Flushbar(
      // There is also a messageText property for when you want to
      // use a Text widget and not just a simple String
      message: 'flushbar_message'.tr(),
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
