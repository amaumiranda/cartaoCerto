import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'manage_card_page_widget.dart' show ManageCardPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ManageCardPageModel extends FlutterFlowModel<ManageCardPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for CardTitle widget.
  FocusNode? cardTitleFocusNode;
  TextEditingController? cardTitleTextController;
  String? Function(BuildContext, String?)? cardTitleTextControllerValidator;
  String? _cardTitleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe um título para este cartão';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }
    if (val.length > 30) {
      return 'Máximo de 30 caracteres';
    }

    return null;
  }

  // State field(s) for CardBrand widget.
  String? cardBrandValue;
  FormFieldController<String>? cardBrandValueController;
  // State field(s) for CardDigits widget.
  FocusNode? cardDigitsFocusNode;
  TextEditingController? cardDigitsTextController;
  String? Function(BuildContext, String?)? cardDigitsTextControllerValidator;
  String? _cardDigitsTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe os últimos 4 dígitos do cartão';
    }

    return null;
  }

  // State field(s) for CardExp widget.
  FocusNode? cardExpFocusNode;
  TextEditingController? cardExpTextController;
  final cardExpMask = MaskTextInputFormatter(mask: '##/####');
  String? Function(BuildContext, String?)? cardExpTextControllerValidator;
  String? _cardExpTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe a data de validade do cartão';
    }

    return null;
  }

  // State field(s) for CardCloseDay widget.
  FocusNode? cardCloseDayFocusNode;
  TextEditingController? cardCloseDayTextController;
  String? Function(BuildContext, String?)? cardCloseDayTextControllerValidator;
  String? _cardCloseDayTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o dia de fechamento da fatura';
    }

    return null;
  }

  // State field(s) for CardDueDay widget.
  FocusNode? cardDueDayFocusNode;
  TextEditingController? cardDueDayTextController;
  final cardDueDayMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? cardDueDayTextControllerValidator;
  String? _cardDueDayTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Informe o dia de vencimento da fatura';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    cardTitleTextControllerValidator = _cardTitleTextControllerValidator;
    cardDigitsTextControllerValidator = _cardDigitsTextControllerValidator;
    cardExpTextControllerValidator = _cardExpTextControllerValidator;
    cardCloseDayTextControllerValidator = _cardCloseDayTextControllerValidator;
    cardDueDayTextControllerValidator = _cardDueDayTextControllerValidator;
  }

  @override
  void dispose() {
    cardTitleFocusNode?.dispose();
    cardTitleTextController?.dispose();

    cardDigitsFocusNode?.dispose();
    cardDigitsTextController?.dispose();

    cardExpFocusNode?.dispose();
    cardExpTextController?.dispose();

    cardCloseDayFocusNode?.dispose();
    cardCloseDayTextController?.dispose();

    cardDueDayFocusNode?.dispose();
    cardDueDayTextController?.dispose();
  }
}
