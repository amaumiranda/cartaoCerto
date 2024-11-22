// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreditCardStruct extends BaseStruct {
  CreditCardStruct({
    String? title,
    String? brand,
    int? cardDigits,
    String? dateExp,
    String? dayClose,
    String? dayDue,
    int? id,
  })  : _title = title,
        _brand = brand,
        _cardDigits = cardDigits,
        _dateExp = dateExp,
        _dayClose = dayClose,
        _dayDue = dayDue,
        _id = id;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  set brand(String? val) => _brand = val;

  bool hasBrand() => _brand != null;

  // "card_digits" field.
  int? _cardDigits;
  int get cardDigits => _cardDigits ?? 0;
  set cardDigits(int? val) => _cardDigits = val;

  void incrementCardDigits(int amount) => cardDigits = cardDigits + amount;

  bool hasCardDigits() => _cardDigits != null;

  // "date_exp" field.
  String? _dateExp;
  String get dateExp => _dateExp ?? '';
  set dateExp(String? val) => _dateExp = val;

  bool hasDateExp() => _dateExp != null;

  // "day_close" field.
  String? _dayClose;
  String get dayClose => _dayClose ?? '';
  set dayClose(String? val) => _dayClose = val;

  bool hasDayClose() => _dayClose != null;

  // "day_due" field.
  String? _dayDue;
  String get dayDue => _dayDue ?? '';
  set dayDue(String? val) => _dayDue = val;

  bool hasDayDue() => _dayDue != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static CreditCardStruct fromMap(Map<String, dynamic> data) =>
      CreditCardStruct(
        title: data['title'] as String?,
        brand: data['brand'] as String?,
        cardDigits: castToType<int>(data['card_digits']),
        dateExp: data['date_exp'] as String?,
        dayClose: data['day_close'] as String?,
        dayDue: data['day_due'] as String?,
        id: castToType<int>(data['id']),
      );

  static CreditCardStruct? maybeFromMap(dynamic data) => data is Map
      ? CreditCardStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'brand': _brand,
        'card_digits': _cardDigits,
        'date_exp': _dateExp,
        'day_close': _dayClose,
        'day_due': _dayDue,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'brand': serializeParam(
          _brand,
          ParamType.String,
        ),
        'card_digits': serializeParam(
          _cardDigits,
          ParamType.int,
        ),
        'date_exp': serializeParam(
          _dateExp,
          ParamType.String,
        ),
        'day_close': serializeParam(
          _dayClose,
          ParamType.String,
        ),
        'day_due': serializeParam(
          _dayDue,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static CreditCardStruct fromSerializableMap(Map<String, dynamic> data) =>
      CreditCardStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        brand: deserializeParam(
          data['brand'],
          ParamType.String,
          false,
        ),
        cardDigits: deserializeParam(
          data['card_digits'],
          ParamType.int,
          false,
        ),
        dateExp: deserializeParam(
          data['date_exp'],
          ParamType.String,
          false,
        ),
        dayClose: deserializeParam(
          data['day_close'],
          ParamType.String,
          false,
        ),
        dayDue: deserializeParam(
          data['day_due'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CreditCardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreditCardStruct &&
        title == other.title &&
        brand == other.brand &&
        cardDigits == other.cardDigits &&
        dateExp == other.dateExp &&
        dayClose == other.dayClose &&
        dayDue == other.dayDue &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([title, brand, cardDigits, dateExp, dayClose, dayDue, id]);
}

CreditCardStruct createCreditCardStruct({
  String? title,
  String? brand,
  int? cardDigits,
  String? dateExp,
  String? dayClose,
  String? dayDue,
  int? id,
}) =>
    CreditCardStruct(
      title: title,
      brand: brand,
      cardDigits: cardDigits,
      dateExp: dateExp,
      dayClose: dayClose,
      dayDue: dayDue,
      id: id,
    );
