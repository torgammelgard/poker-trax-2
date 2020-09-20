import 'package:easy_localization/easy_localization.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class AddSession extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add_session'.tr()),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('btn_press_me'.tr()),
            onPressed: () {
              showSimpleFlushbar(context);
            }),
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
}
