import 'package:easy_localization/easy_localization.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import 'Session.dart';

class SessionScreen extends StatelessWidget {
  final Session session;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('session'.tr()),
        ),
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(children: [
              Text(session.location),
              Text(session.result.toString())
            ])));
  }

  void showSimpleFlushbar(BuildContext context) {
    Flushbar(
      // There is also a messageText property for when you want to
      // use a Text widget and not just a simple String
      message: 'flushbar_message'.tr(),
      // Even the button can be styled to your heart's content
      mainButton: FlatButton(
        child: Text(
          'click_me'.tr(),
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

  SessionScreen({Key key, @required this.session}) : super(key: key);
}
