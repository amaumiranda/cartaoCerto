import '../database.dart';

class TipsTable extends SupabaseTable<TipsRow> {
  @override
  String get tableName => 'tips';

  @override
  TipsRow createRow(Map<String, dynamic> data) => TipsRow(data);
}

class TipsRow extends SupabaseDataRow {
  TipsRow(super.data);

  @override
  SupabaseTable get table => TipsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get tip => getField<String>('tip');
  set tip(String? value) => setField<String>('tip', value);
}
