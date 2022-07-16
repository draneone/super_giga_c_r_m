import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _showmenu = prefs.getBool('ff_showmenu') ?? _showmenu;
  }

  SharedPreferences prefs;

  bool _showmenu = true;
  bool get showmenu => _showmenu;
  set showmenu(bool _value) {
    _showmenu = _value;
    prefs.setBool('ff_showmenu', _value);
  }

  bool favourite = false;
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
