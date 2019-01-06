import 'package:flutter/material.dart';

class SessionListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Session title here SessionListTile'),
      subtitle: Text(
        'Subtitle goes here',
      ),
      leading: CircleAvatar(
          backgroundColor: Colors.grey,
          child: Image(
            image: AssetImage('assets/graph.png'),
          )),
      trailing: Icon(const IconData(0xe3c9, fontFamily: 'MaterialIcons')),
    );
  }
}
