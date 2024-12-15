import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'no_due_cards_model.dart';
export 'no_due_cards_model.dart';

class NoDueCardsWidget extends StatefulWidget {
  const NoDueCardsWidget({super.key});

  @override
  State<NoDueCardsWidget> createState() => _NoDueCardsWidgetState();
}

class _NoDueCardsWidgetState extends State<NoDueCardsWidget> {
  late NoDueCardsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoDueCardsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.credit_card_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 64.0,
              ),
              Text(
                'Não há faturas a vencer nos próximos 10 dias.',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Inter Tight',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(const SizedBox(height: 16.0)),
          ),
        ),
      ),
    );
  }
}
