import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'how_to_photo_model.dart';
export 'how_to_photo_model.dart';

class HowToPhotoWidget extends StatefulWidget {
  const HowToPhotoWidget({super.key});

  @override
  State<HowToPhotoWidget> createState() => _HowToPhotoWidgetState();
}

class _HowToPhotoWidgetState extends State<HowToPhotoWidget> {
  late HowToPhotoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HowToPhotoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: const Icon(
                Icons.close,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                context.pushNamed('createListing');
              },
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 5.0),
                      child: Text(
                        'How to take a great listing photo',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Outfit',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 2.0, 10.0, 0.0),
                      child: Text(
                        'Taking great listing pictures for your textbooks is crucial as it greatly influences a buyer\'s decision. Here\'s a simple guide to help you capture the best photos for your textbook listings:',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily: 'Manrope',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 40.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '1. Use Natural Light',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 10.0, 0.0),
                      child: Text(
                        'Best Timing: Take photos during the day when there\'s plenty of natural light. Avoid direct sunlight, which can cause glare or shadows.\nIndirect Light: Position the book near a window where the light is soft and diffused.',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily: 'Manrope',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '2. Clear Background',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 10.0, 0.0),
                      child: Text(
                        'Simplicity is Key: Use a neutral, uncluttered background. A plain wall, table, or a piece of white fabric works well to keep the focus on the book.\nAvoid Distractions: Ensure there are no distracting items in the frame that could detract from the book.',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily: 'Manrope',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '3. Multiple Angles',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 10.0, 0.0),
                      child: Text(
                        'Cover: Start with a clear shot of the front cover. Make sure it\'s well-lit and the title is readable.\nSpine and Back: Include shots of the spine and back cover to provide a complete view of the book\'s condition.\nInside Pages: Capture a few pages inside to show the text, any highlights or notes, and the overall quality.',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily: 'Manrope',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '4. Focus on Details',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 10.0, 0.0),
                      child: Text(
                        'Condition Matters: Highlight any wear and tear, such as creases, marks, or damage. Being transparent about the condition helps build trust with potential buyers.\nClose-Ups: Take close-up photos of any significant details or imperfections.',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily: 'Manrope',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
