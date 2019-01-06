import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Poker Trax 2',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          accentColor: Colors.redAccent,
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
            appBar: AppBar(
              title: Text('Poker Trax 2'),
            ),
            body: Center(
                child: Column(children: [
              Expanded(
                  child: ListView(
                children: <Widget>[
                  const ListTile(
                    title: Text('Session title here'),
                    subtitle: Text(
                      'Subtitle goes here',
                    ),
                    leading: Icon(
                        const IconData(0xeb3b, fontFamily: 'MaterialIcons')),
                    trailing: Icon(
                        const IconData(0xe3c9, fontFamily: 'MaterialIcons')),
                  ),
                  const ListTile(
                      title: Text('Session title here'),
                      subtitle: Text(
                        'Subtitle goes here',
                      )),
                  const ListTile(
                      title: Text('Session title here'),
                      subtitle: Text(
                        'Subtitle goes here',
                      )),
                ],
              ))
            ]))));
  }
}
