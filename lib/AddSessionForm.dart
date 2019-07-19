import 'package:flutter/material.dart';

import './Session.dart';

class AddSessionForm extends StatefulWidget {
  @override
  _AddSessionFormState createState() => _AddSessionFormState();
}

class _AddSessionFormState extends State<AddSessionForm> {
  final resultController = TextEditingController();
  final locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Poker Trax 2'),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            TextField(
              controller: resultController,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Enter a result'),
            ),
            TextField(
              controller: locationController,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Enter a location'),
            ),
            RaisedButton(
              child: Text('Add session'),
              onPressed: () {
                var session = Session(
                    result: int.parse(resultController.text),
                    location: locationController.text);
                Navigator.pop(context, session);
              },
            )
          ],
        )));
  }

  @override
  void dispose() {
    resultController.dispose();
    locationController.dispose();
    super.dispose();
  }
}
