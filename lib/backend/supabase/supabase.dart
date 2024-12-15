import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://qttenqggtkfrfltmsqzb.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF0dGVucWdndGtmcmZsdG1zcXpiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA3Njk2MjcsImV4cCI6MjA0NjM0NTYyN30.4Eb7ULnlBHj0PA-lRxucazmv1izVw0YDU0wcLzZzEAQ';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
