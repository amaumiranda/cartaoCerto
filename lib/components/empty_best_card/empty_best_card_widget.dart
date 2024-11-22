import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_best_card_model.dart';
export 'empty_best_card_model.dart';

class EmptyBestCardWidget extends StatefulWidget {
  const EmptyBestCardWidget({super.key});

  @override
  State<EmptyBestCardWidget> createState() => _EmptyBestCardWidgetState();
}

class _EmptyBestCardWidgetState extends State<EmptyBestCardWidget> {
  late EmptyBestCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyBestCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 160.0,
      decoration: BoxDecoration(
        color: const Color(0x94000000),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.credit_card,
                  color: FlutterFlowTheme.of(context).info,
                  size: 20.0,
                ),
                Flexible(
                  child: Text(
                    'No momento você não possui um cartão de crédito recomentado para uso.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).info,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ].divide(const SizedBox(width: 8.0)),
            ),
          ].divide(const SizedBox(height: 5.0)),
        ),
      ),
    );
  }
}
