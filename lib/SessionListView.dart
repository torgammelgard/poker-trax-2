import 'package:flutter/material.dart';
import 'package:poker_trax_2/SessionScreen.dart';

import 'Session.dart';

class SessionListView extends StatelessWidget {
  final List<Session> sessions = [
    Session(result: 120, location: 'Commerce Casino'),
    Session(result: -10, location: 'Commerce Casino'),
    Session(result: 220, location: 'Commerce Casino'),
    Session(result: -130, location: 'Commerce Casino'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: sessions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(sessions[index].result.toString()),
            subtitle: Text(sessions[index].location),
            leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Image(
                  image: AssetImage('assets/graph.png'),
                )),
            trailing: Icon(const IconData(0xe3c9, fontFamily: 'MaterialIcons')),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SessionScreen(session: sessions[index],)));
            },
          );
        });
  }
}
