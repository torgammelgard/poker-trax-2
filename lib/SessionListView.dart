import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SessionListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection('sessions').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          //if (!snapshot.hasData) return const Text('Loading...');
          return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      snapshot.data.documents[index]['result'].toString()),
                  subtitle: Text(snapshot.data.documents[index]['location']),
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Image.asset("assets/graph.png"),
                  ),
                  trailing: Icon(
                      const IconData(0xe3c9, fontFamily: 'MaterialIcons')),
                );
              });
        }
    );
  }
}
