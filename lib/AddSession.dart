import 'package:easy_localization/easy_localization.dart';
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
            child: Text("Press me"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
