import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  bool? get alertCardDue => getField<bool>('alert_card_due');
  set alertCardDue(bool? value) => setField<bool>('alert_card_due', value);

  bool? get alertCardBest => getField<bool>('alert_card_best');
  set alertCardBest(bool? value) => setField<bool>('alert_card_best', value);

  bool? get alertTips => getField<bool>('alert_tips');
  set alertTips(bool? value) => setField<bool>('alert_tips', value);
}
