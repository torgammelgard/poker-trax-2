import 'package:easy_localization/easy_localization.dart';
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
}
