import '../database.dart';

class ViewTipTable extends SupabaseTable<ViewTipRow> {
  @override
  String get tableName => 'view_tip';

  @override
  ViewTipRow createRow(Map<String, dynamic> data) => ViewTipRow(data);
}

class ViewTipRow extends SupabaseDataRow {
  ViewTipRow(super.data);

  @override
  SupabaseTable get table => ViewTipTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get tip => getField<String>('tip');
  set tip(String? value) => setField<String>('tip', value);
}
