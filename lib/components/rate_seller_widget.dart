import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'rate_seller_model.dart';
export 'rate_seller_model.dart';

class RateSellerWidget extends StatefulWidget {
  const RateSellerWidget({
    super.key,
    required this.user,
    required this.chatRef,
  });

  final DocumentReference? user;
  final DocumentReference? chatRef;

  @override
  State<RateSellerWidget> createState() => _RateSellerWidgetState();
}

class _RateSellerWidgetState extends State<RateSellerWidget> {
  late RateSellerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RateSellerModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2.0,
                sigmaY: 2.0,
              ),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                height: MediaQuery.sizeOf(context).height * 0.8,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 10.0, 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Rate you experience',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Communication',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Manrope',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 26.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            RatingBar.builder(
                              onRatingUpdate: (newValue) => setState(
                                  () => _model.ratingBarValue1 = newValue),
                              itemBuilder: (context, index) => const Icon(
                                Icons.star_rounded,
                                color: Color(0xFFFCE94D),
                              ),
                              direction: Axis.horizontal,
                              initialRating: _model.ratingBarValue1 ??= 5.0,
                              unratedColor: const Color(0x4CFCE94D),
                              itemCount: 5,
                              itemSize: 40.0,
                              glowColor: const Color(0xFFFCE94D),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Pricing',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Manrope',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 26.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            RatingBar.builder(
                              onRatingUpdate: (newValue) => setState(
                                  () => _model.ratingBarValue2 = newValue),
                              itemBuilder: (context, index) => const Icon(
                                Icons.star_rounded,
                                color: Color(0xFFFCE94D),
                              ),
                              direction: Axis.horizontal,
                              initialRating: _model.ratingBarValue2 ??= 5.0,
                              unratedColor: const Color(0x4CFCE94D),
                              itemCount: 5,
                              itemSize: 40.0,
                              glowColor: const Color(0xFFFCE94D),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Item description',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Manrope',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 26.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            RatingBar.builder(
                              onRatingUpdate: (newValue) => setState(
                                  () => _model.ratingBarValue3 = newValue),
                              itemBuilder: (context, index) => const Icon(
                                Icons.star_rounded,
                                color: Color(0xFFFCE94D),
                              ),
                              direction: Axis.horizontal,
                              initialRating: _model.ratingBarValue3 ??= 5.0,
                              unratedColor: const Color(0x4CFCE94D),
                              itemCount: 5,
                              itemSize: 40.0,
                              glowColor: const Color(0xFFFCE94D),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 50.0, 0.0, 0.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
                                labelText: 'Review',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Manrope',
                                      letterSpacing: 0.0,
                                    ),
                                alignLabelWithHint: true,
                                hintText:
                                    'Please include a brief review of your experience.',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Manrope',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    letterSpacing: 0.0,
                                  ),
                              maxLines: 3,
                              maxLength: 150,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                            text: 'Dismiss',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Manrope',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await widget.chatRef!
                                      .update(createChatsRecordData(
                                    rated: true,
                                  ));

                                  await widget.user!.update({
                                    ...mapToFirestore(
                                      {
                                        'reviews': FieldValue.arrayUnion([
                                          getReviewFirestoreData(
                                            updateReviewStruct(
                                              ReviewStruct(
                                                communication: _model
                                                    .ratingBarValue1
                                                    ?.round(),
                                                pricing: _model.ratingBarValue2
                                                    ?.round(),
                                                itemDescription: _model
                                                    .ratingBarValue3
                                                    ?.round(),
                                                note:
                                                    _model.textController.text,
                                                users: currentUserReference,
                                                avergareRating:
                                                    valueOrDefault<double>(
                                                  (valueOrDefault<int>(
                                                            _model
                                                                .ratingBarValue1
                                                                ?.round(),
                                                            5,
                                                          ) +
                                                          valueOrDefault<int>(
                                                            _model
                                                                .ratingBarValue2
                                                                ?.round(),
                                                            5,
                                                          ) +
                                                          valueOrDefault<int>(
                                                            _model
                                                                .ratingBarValue3
                                                                ?.round(),
                                                            5,
                                                          )) /
                                                      3,
                                                  5.0,
                                                ),
                                                chat: widget.chatRef,
                                              ),
                                              clearUnsetFields: false,
                                            ),
                                            true,
                                          )
                                        ]),
                                      },
                                    ),
                                  });
                                  Navigator.pop(context);
                                },
                                text: 'Rate',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
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
            ),
          ),
        ),
      ],
    );
  }
}
