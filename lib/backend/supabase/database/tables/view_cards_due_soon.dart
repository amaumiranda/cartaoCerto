import '../database.dart';

class ViewCardsDueSoonTable extends SupabaseTable<ViewCardsDueSoonRow> {
  @override
  String get tableName => 'view_cards_due_soon';

  @override
  ViewCardsDueSoonRow createRow(Map<String, dynamic> data) =>
      ViewCardsDueSoonRow(data);
}

class ViewCardsDueSoonRow extends SupabaseDataRow {
  ViewCardsDueSoonRow(super.data);

  @override
  SupabaseTable get table => ViewCardsDueSoonTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

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

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  double? get daysUntilDue => getField<double>('days_until_due');
  set daysUntilDue(double? value) => setField<double>('days_until_due', value);
}
