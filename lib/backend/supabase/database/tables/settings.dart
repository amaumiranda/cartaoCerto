import '../database.dart';

class SettingsTable extends SupabaseTable<SettingsRow> {
  @override
  String get tableName => 'settings';

  @override
  SettingsRow createRow(Map<String, dynamic> data) => SettingsRow(data);
}

class SettingsRow extends SupabaseDataRow {
  SettingsRow(super.data);

  @override
  SupabaseTable get table => SettingsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  bool? get alertCardDue => getField<bool>('alert_card_due');
  set alertCardDue(bool? value) => setField<bool>('alert_card_due', value);

  bool? get alertBestCard => getField<bool>('alert_best_card');
  set alertBestCard(bool? value) => setField<bool>('alert_best_card', value);

  bool? get alertTips => getField<bool>('alert_tips');
  set alertTips(bool? value) => setField<bool>('alert_tips', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);
}
