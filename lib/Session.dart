class Session {
  int result;
  String location;

  Session({this.result, this.location});

  Map<String, dynamic> getMap() {
    return {'result': result, 'location': location};
  }
}
