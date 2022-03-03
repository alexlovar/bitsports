class Film{
  late String _url;

  String get url => _url;

  set url(String value) {
    _url = value;
  }

  @override
  String toString() {
    return 'Film{_url: $_url}';
  }
}