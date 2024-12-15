import '/backend/schema/structs/index.dart';
import '/components/tips_component/tips_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_page_widget.dart' show DashboardPageWidget;
import 'package:flutter/material.dart';

class DashboardPageModel extends FlutterFlowModel<DashboardPageWidget> {
  ///  Local state fields for this page.

  List<CreditCardStruct> creditCardsDue = [];
  void addToCreditCardsDue(CreditCardStruct item) => creditCardsDue.add(item);
  void removeFromCreditCardsDue(CreditCardStruct item) =>
      creditCardsDue.remove(item);
  void removeAtIndexFromCreditCardsDue(int index) =>
      creditCardsDue.removeAt(index);
  void insertAtIndexInCreditCardsDue(int index, CreditCardStruct item) =>
      creditCardsDue.insert(index, item);
  void updateCreditCardsDueAtIndex(
          int index, Function(CreditCardStruct) updateFn) =>
      creditCardsDue[index] = updateFn(creditCardsDue[index]);

  ///  State fields for stateful widgets in this page.

  // Model for TipsComponent component.
  late TipsComponentModel tipsComponentModel;

  @override
  void initState(BuildContext context) {
    tipsComponentModel = createModel(context, () => TipsComponentModel());
  }

  @override
  void dispose() {
    tipsComponentModel.dispose();
  }
}
