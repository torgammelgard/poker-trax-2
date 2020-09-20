import 'package:flutter/material.dart';

class AddSession extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add session"),
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
