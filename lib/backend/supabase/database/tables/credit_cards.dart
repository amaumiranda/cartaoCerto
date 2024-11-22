import '../database.dart';

class CreditCardsTable extends SupabaseTable<CreditCardsRow> {
  @override
  String get tableName => 'credit_cards';

  @override
  CreditCardsRow createRow(Map<String, dynamic> data) => CreditCardsRow(data);
}

class CreditCardsRow extends SupabaseDataRow {
  CreditCardsRow(super.data);

  @override
  SupabaseTable get table => CreditCardsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get brand => getField<String>('brand');
  set brand(String? value) => setField<String>('brand', value);

  String? get cardDigits => getField<String>('card_digits');
  set cardDigits(String? value) => setField<String>('card_digits', value);

  String? get dateExp => getField<String>('date_exp');
  set dateExp(String? value) => setField<String>('date_exp', value);

  String? get dayClose => getField<String>('day_close');
  set dayClose(String? value) => setField<String>('day_close', value);

  String? get dayDue => getField<String>('day_due');
  set dayDue(String? value) => setField<String>('day_due', value);
}
