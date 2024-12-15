import '../database.dart';

class ViewBestCardsForTodayTable
    extends SupabaseTable<ViewBestCardsForTodayRow> {
  @override
  String get tableName => 'view_best_cards_for_today';

  @override
  ViewBestCardsForTodayRow createRow(Map<String, dynamic> data) =>
      ViewBestCardsForTodayRow(data);
}

class ViewBestCardsForTodayRow extends SupabaseDataRow {
  ViewBestCardsForTodayRow(super.data);

  @override
  SupabaseTable get table => ViewBestCardsForTodayTable();

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

  DateTime? get closeDate => getField<DateTime>('close_date');
  set closeDate(DateTime? value) => setField<DateTime>('close_date', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);
}
