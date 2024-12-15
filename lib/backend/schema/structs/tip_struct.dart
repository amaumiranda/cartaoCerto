// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipStruct extends BaseStruct {
  TipStruct({
    int? id,
    String? title,
    String? tip,
  })  : _id = id,
        _title = title,
        _tip = tip;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "tip" field.
  String? _tip;
  String get tip => _tip ?? '';
  set tip(String? val) => _tip = val;

  bool hasTip() => _tip != null;

  static TipStruct fromMap(Map<String, dynamic> data) => TipStruct(
        id: castToType<int>(data['id']),
        title: data['title'] as String?,
        tip: data['tip'] as String?,
      );

  static TipStruct? maybeFromMap(dynamic data) =>
      data is Map ? TipStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'tip': _tip,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'tip': serializeParam(
          _tip,
          ParamType.String,
        ),
      }.withoutNulls;

  static TipStruct fromSerializableMap(Map<String, dynamic> data) => TipStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        tip: deserializeParam(
          data['tip'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TipStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TipStruct &&
        id == other.id &&
        title == other.title &&
        tip == other.tip;
  }

  @override
  int get hashCode => const ListEquality().hash([id, title, tip]);
}

TipStruct createTipStruct({
  int? id,
  String? title,
  String? tip,
}) =>
    TipStruct(
      id: id,
      title: title,
      tip: tip,
    );
