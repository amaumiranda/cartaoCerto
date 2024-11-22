import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _tips = prefs
              .getStringList('ff_tips')
              ?.map((x) {
                try {
                  return TipStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _tips;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<TipStruct> _tips = [];
  List<TipStruct> get tips => _tips;
  set tips(List<TipStruct> value) {
    _tips = value;
    prefs.setStringList('ff_tips', value.map((x) => x.serialize()).toList());
  }

  void addToTips(TipStruct value) {
    tips.add(value);
    prefs.setStringList('ff_tips', _tips.map((x) => x.serialize()).toList());
  }

  void removeFromTips(TipStruct value) {
    tips.remove(value);
    prefs.setStringList('ff_tips', _tips.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTips(int index) {
    tips.removeAt(index);
    prefs.setStringList('ff_tips', _tips.map((x) => x.serialize()).toList());
  }

  void updateTipsAtIndex(
    int index,
    TipStruct Function(TipStruct) updateFn,
  ) {
    tips[index] = updateFn(_tips[index]);
    prefs.setStringList('ff_tips', _tips.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTips(int index, TipStruct value) {
    tips.insert(index, value);
    prefs.setStringList('ff_tips', _tips.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
