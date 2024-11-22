import '/backend/supabase/supabase.dart';
import 'package:flutter/material.dart';

Future queryTips(BuildContext context) async {}

Future queryCreditCards(BuildContext context) async {
  List<CreditCardsRow>? queryCreditCardsResult;

  queryCreditCardsResult = await CreditCardsTable().queryRows(
    queryFn: (q) => q,
  );
}
