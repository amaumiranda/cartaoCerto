import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'manage_card_page_model.dart';
export 'manage_card_page_model.dart';

class ManageCardPageWidget extends StatefulWidget {
  const ManageCardPageWidget({
    super.key,
    this.cardId,
  });

  final int? cardId;

  @override
  State<ManageCardPageWidget> createState() => _ManageCardPageWidgetState();
}

class _ManageCardPageWidgetState extends State<ManageCardPageWidget> {
  late ManageCardPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManageCardPageModel());

    _model.cardTitleFocusNode ??= FocusNode();

    _model.cardDigitsFocusNode ??= FocusNode();

    _model.cardExpFocusNode ??= FocusNode();

    _model.cardCloseDayFocusNode ??= FocusNode();

    _model.cardDueDayFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CreditCardsRow>>(
      future: CreditCardsTable().querySingleRow(
        queryFn: (q) => q
            .eqOrNull(
              'id',
              widget.cardId,
            )
            .eqOrNull(
              'uuid',
              currentUserUid,
            ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<CreditCardsRow> manageCardPageCreditCardsRowList = snapshot.data!;

        final manageCardPageCreditCardsRow =
            manageCardPageCreditCardsRowList.isNotEmpty
                ? manageCardPageCreditCardsRowList.first
                : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 220.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          FlutterFlowTheme.of(context).primary,
                          FlutterFlowTheme.of(context).secondary,
                          FlutterFlowTheme.of(context).tertiary
                        ],
                        stops: const [0.0, 0.5, 1.0],
                        begin: const AlignmentDirectional(-1.0, -1.0),
                        end: const AlignmentDirectional(1.0, 1.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          24.0, 24.0, 24.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlutterFlowIconButton(
                                borderRadius: 20.0,
                                buttonSize: 40.0,
                                fillColor: const Color(0x33FFFFFF),
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: FlutterFlowTheme.of(context).info,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  context.safePop();
                                },
                              ),
                            ],
                          ),
                          Text(
                            '${widget.cardId != null ? 'Editar' : 'Cadastrar'} Cartão',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Inter Tight',
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            'Preencha os dados do seu cartão de crédito',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].divide(const SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    child: Form(
                      key: _model.formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            32.0, 24.0, 32.0, 24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 20.0, 20.0, 20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Dados do Cartão',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Inter Tight',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller:
                                              _model.cardTitleTextController ??=
                                                  TextEditingController(
                                            text: (widget.cardId != null) &&
                                                    (manageCardPageCreditCardsRow
                                                                ?.title !=
                                                            null &&
                                                        manageCardPageCreditCardsRow
                                                                ?.title !=
                                                            '')
                                                ? manageCardPageCreditCardsRow
                                                    ?.title
                                                : '',
                                          ),
                                          focusNode: _model.cardTitleFocusNode,
                                          autofocus: false,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Título do cartão',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 20.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                          keyboardType: TextInputType.number,
                                          validator: _model
                                              .cardTitleTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      FlutterFlowDropDown<String>(
                                        controller:
                                            _model.cardBrandValueController ??=
                                                FormFieldController<String>(
                                          _model.cardBrandValue ??= (widget
                                                          .cardId !=
                                                      null) &&
                                                  (manageCardPageCreditCardsRow
                                                              ?.brand !=
                                                          null &&
                                                      manageCardPageCreditCardsRow
                                                              ?.brand !=
                                                          '')
                                              ? manageCardPageCreditCardsRow
                                                  ?.brand
                                              : '',
                                        ),
                                        options: const [
                                          'Mastercard',
                                          'Visa',
                                          'Elo',
                                          'American Express',
                                          'Hipercard',
                                          'Outro'
                                        ],
                                        onChanged: (val) => safeSetState(
                                            () => _model.cardBrandValue = val),
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Inter',
                                              letterSpacing: 0.0,
                                            ),
                                        hintText: 'Bandeira do cartão',
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderWidth: 1.0,
                                        borderRadius: 8.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 10.0, 0.0),
                                        hidesUnderline: true,
                                        isOverButton: false,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model
                                                  .cardDigitsTextController ??=
                                              TextEditingController(
                                            text: (widget.cardId != null) &&
                                                    (manageCardPageCreditCardsRow
                                                                ?.cardDigits !=
                                                            null &&
                                                        manageCardPageCreditCardsRow
                                                                ?.cardDigits !=
                                                            '')
                                                ? manageCardPageCreditCardsRow
                                                    ?.cardDigits
                                                : '',
                                          ),
                                          focusNode: _model.cardDigitsFocusNode,
                                          autofocus: false,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                'Últimos 4 dígitos do cartão',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 20.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                          maxLength: 4,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.enforced,
                                          keyboardType: TextInputType.number,
                                          validator: _model
                                              .cardDigitsTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller:
                                              _model.cardExpTextController ??=
                                                  TextEditingController(
                                            text: (widget.cardId != null) &&
                                                    (manageCardPageCreditCardsRow
                                                                ?.dateExp !=
                                                            null &&
                                                        manageCardPageCreditCardsRow
                                                                ?.dateExp !=
                                                            '')
                                                ? manageCardPageCreditCardsRow
                                                    ?.dateExp
                                                : '',
                                          ),
                                          focusNode: _model.cardExpFocusNode,
                                          autofocus: false,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Validade do cartão',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Ex: 05/2025',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 20.0),
                                            suffixIcon: const Icon(
                                              Icons.calendar_today,
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                          maxLength: 7,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.enforced,
                                          buildCounter: (context,
                                                  {required currentLength,
                                                  required isFocused,
                                                  maxLength}) =>
                                              null,
                                          keyboardType: TextInputType.number,
                                          validator: _model
                                              .cardExpTextControllerValidator
                                              .asValidator(context),
                                          inputFormatters: [_model.cardExpMask],
                                        ),
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model
                                                  .cardCloseDayTextController ??=
                                              TextEditingController(
                                            text: (widget.cardId != null) &&
                                                    (manageCardPageCreditCardsRow
                                                                ?.dayClose !=
                                                            null &&
                                                        manageCardPageCreditCardsRow
                                                                ?.dayClose !=
                                                            '')
                                                ? manageCardPageCreditCardsRow
                                                    ?.dayClose
                                                : '',
                                          ),
                                          focusNode:
                                              _model.cardCloseDayFocusNode,
                                          autofocus: false,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                'Dia do fechamento da fatura',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 20.0),
                                            suffixIcon: const Icon(
                                              Icons.calendar_today,
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                          maxLength: 2,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.enforced,
                                          buildCounter: (context,
                                                  {required currentLength,
                                                  required isFocused,
                                                  maxLength}) =>
                                              null,
                                          keyboardType: TextInputType.number,
                                          validator: _model
                                              .cardCloseDayTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        child: TextFormField(
                                          controller: _model
                                                  .cardDueDayTextController ??=
                                              TextEditingController(
                                            text: (widget.cardId != null) &&
                                                    (manageCardPageCreditCardsRow
                                                                ?.dayDue !=
                                                            null &&
                                                        manageCardPageCreditCardsRow
                                                                ?.dayDue !=
                                                            '')
                                                ? manageCardPageCreditCardsRow
                                                    ?.dayDue
                                                : '',
                                          ),
                                          focusNode: _model.cardDueDayFocusNode,
                                          autofocus: false,
                                          textInputAction: TextInputAction.done,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                'Dia do vencimento da fatura',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 20.0),
                                            suffixIcon: const Icon(
                                              Icons.calendar_today,
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                              ),
                                          maxLength: 2,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.enforced,
                                          buildCounter: (context,
                                                  {required currentLength,
                                                  required isFocused,
                                                  maxLength}) =>
                                              null,
                                          keyboardType: TextInputType.number,
                                          validator: _model
                                              .cardDueDayTextControllerValidator
                                              .asValidator(context),
                                          inputFormatters: [
                                            _model.cardDueDayMask
                                          ],
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                            Material(
                              color: Colors.transparent,
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 20.0, 20.0, 20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFE3F2FD),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 16.0, 16.0, 16.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              const Icon(
                                                Icons.info_outline,
                                                color: Color(0xFF1565C0),
                                                size: 24.0,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Por que precisamos desses dados?',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                    Text(
                                                      'Utilizamos essas informações para recomendar as melhores datas de compra e ajudar no controle das suas faturas.',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodySmall
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 12.0)),
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(height: 16.0)),
                                  ),
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                if (_model.cardBrandValue == null) {
                                  return;
                                }
                                if ((widget.cardId != null) &&
                                    (manageCardPageCreditCardsRow?.uuid ==
                                        currentUserUid)) {
                                  await CreditCardsTable().update(
                                    data: {
                                      'title':
                                          _model.cardTitleTextController.text,
                                      'brand': _model.cardBrandValue,
                                      'card_digits':
                                          _model.cardDigitsTextController.text,
                                      'date_exp':
                                          _model.cardExpTextController.text,
                                      'day_close': _model
                                          .cardCloseDayTextController.text,
                                      'day_due':
                                          _model.cardDueDayTextController.text,
                                    },
                                    matchingRows: (rows) => rows
                                        .eqOrNull(
                                          'id',
                                          widget.cardId,
                                        )
                                        .eqOrNull(
                                          'uuid',
                                          currentUserUid,
                                        ),
                                  );
                                } else {
                                  await CreditCardsTable().insert({
                                    'uuid': currentUserUid,
                                    'title':
                                        _model.cardTitleTextController.text,
                                    'brand': _model.cardBrandValue,
                                    'card_digits':
                                        _model.cardDigitsTextController.text,
                                    'date_exp':
                                        _model.cardExpTextController.text,
                                    'day_close':
                                        _model.cardCloseDayTextController.text,
                                    'day_due':
                                        _model.cardDueDayTextController.text,
                                  });
                                }

                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      content: const Text('Cartão salvo com sucesso'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: const Text('Fechar'),
                                        ),
                                      ],
                                    );
                                  },
                                );

                                context.pushNamed('ListCards');
                              },
                              text: 'Salvar Cartão',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                var confirmDialogResponse = await showDialog<
                                        bool>(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: const Text('Excluir Cartão'),
                                          content: const Text(
                                              'Você desaja realmente excluir esse cartão?'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext, false),
                                              child: const Text('Cancelar'),
                                            ),
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext, true),
                                              child: const Text('Confirmar exclusão'),
                                            ),
                                          ],
                                        );
                                      },
                                    ) ??
                                    false;
                                await CreditCardsTable().delete(
                                  matchingRows: (rows) => rows
                                      .eqOrNull(
                                        'id',
                                        widget.cardId,
                                      )
                                      .eqOrNull(
                                        'uuid',
                                        currentUserUid,
                                      ),
                                );

                                context.pushNamed('ListCards');
                              },
                              text: 'Remover Cartão',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).error,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 2.0,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                            Text(
                              'Seus dados estão seguros e criptografados',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(const SizedBox(height: 24.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
