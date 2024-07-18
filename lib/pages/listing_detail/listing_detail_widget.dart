import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/seller_details_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'listing_detail_model.dart';
export 'listing_detail_model.dart';

class ListingDetailWidget extends StatefulWidget {
  const ListingDetailWidget({
    super.key,
    required this.listing,
  });

  final ListingsRecord? listing;

  @override
  State<ListingDetailWidget> createState() => _ListingDetailWidgetState();
}

class _ListingDetailWidgetState extends State<ListingDetailWidget> {
  late ListingDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListingDetailModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                child: Text(
                  'Listing Details',
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Outfit',
                        fontSize: 32.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final images = widget.listing?.images.toList() ?? [];

                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(images.length, (imagesIndex) {
                          final imagesItem = images[imagesIndex];
                          return Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                imagesItem,
                                width: 300.0,
                                height: 230.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 8.0),
                child: Text(
                  widget.listing!.subject,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Manrope',
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
                  child: Text(
                    widget.listing!.author,
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Manrope',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 8.0),
                child: Text(
                  widget.listing!.name,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Manrope',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 0.0, 8.0),
                child: Text(
                  widget.listing!.condition,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Manrope',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 0.0, 8.0),
                child: Text(
                  formatNumber(
                    widget.listing!.price,
                    formatType: FormatType.decimal,
                    decimalType: DecimalType.periodDecimal,
                    currency: '\$',
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Manrope',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 0.0, 8.0),
                child: Text(
                  widget.listing!.description,
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Manrope',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: FutureBuilder<UsersRecord>(
                    future: UsersRecord.getDocumentOnce(
                        widget.listing!.createdBy!),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }

                      final rowUsersRecord = snapshot.data!;

                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 8.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    useSafeArea: true,
                                    context: context,
                                    builder: (context) {
                                      return GestureDetector(
                                        onTap: () => _model
                                                .unfocusNode.canRequestFocus
                                            ? FocusScope.of(context)
                                                .requestFocus(
                                                    _model.unfocusNode)
                                            : FocusScope.of(context).unfocus(),
                                        child: Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: SellerDetailsWidget(
                                            seller: rowUsersRecord,
                                          ),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                },
                                child: Text(
                                  'Seller details',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 18.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              if (widget.listing?.createdBy != currentUserReference)
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 0.0, 0.0),
                              child: SizedBox(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  autofocus: true,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  textInputAction: TextInputAction.send,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'Send seller a message',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Manrope',
                                          letterSpacing: 0.0,
                                        ),
                                    errorStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Manrope',
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                    contentPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 56.0, 16.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        letterSpacing: 0.0,
                                      ),
                                  maxLines: 12,
                                  minLines: 1,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primary,
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 6.0, 4.0),
                                child: FlutterFlowIconButton(
                                  borderColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: 20.0,
                                  borderWidth: 1.0,
                                  buttonSize: 40.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  icon: Icon(
                                    Icons.send_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 20.0,
                                  ),
                                  showLoadingIndicator: true,
                                  onPressed: () async {
                                    _model.myChats = await queryChatsRecordOnce(
                                      queryBuilder: (chatsRecord) => chatsRecord
                                          .where(
                                            'user_a',
                                            isEqualTo: currentUserReference,
                                          )
                                          .where(
                                            'user_b',
                                            isEqualTo:
                                                widget.listing?.createdBy,
                                          )
                                          .where(
                                            'listingRef',
                                            isEqualTo:
                                                widget.listing?.reference,
                                          ),
                                      singleRecord: true,
                                    ).then((s) => s.firstOrNull);
                                    if (_model.myChats != null) {
                                      context.pushNamed(
                                        'chat_2_Details',
                                        queryParameters: {
                                          'chatRef': serializeParam(
                                            _model.myChats,
                                            ParamType.Document,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          'chatRef': _model.myChats,
                                        },
                                      );
                                    } else {
                                      _model.myChat2 =
                                          await queryChatsRecordOnce(
                                        queryBuilder: (chatsRecord) =>
                                            chatsRecord
                                                .where(
                                                  'user_a',
                                                  isEqualTo: widget
                                                      .listing?.createdBy,
                                                )
                                                .where(
                                                  'user_b',
                                                  isEqualTo:
                                                      currentUserReference,
                                                )
                                                .where(
                                                  'listingRef',
                                                  isEqualTo: widget
                                                      .listing?.reference,
                                                ),
                                        singleRecord: true,
                                      ).then((s) => s.firstOrNull);
                                      if (_model.myChat2 != null) {
                                        context.pushNamed(
                                          'chat_2_Details',
                                          queryParameters: {
                                            'chatRef': serializeParam(
                                              _model.myChat2,
                                              ParamType.Document,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            'chatRef': _model.myChat2,
                                          },
                                        );
                                      } else {
                                        var chatsRecordReference1 =
                                            ChatsRecord.collection.doc();
                                        await chatsRecordReference1.set({
                                          ...createChatsRecordData(
                                            userA: currentUserReference,
                                            userB: widget.listing?.createdBy,
                                            listingRef:
                                                widget.listing?.reference,
                                            seller: widget.listing?.createdBy,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'users': [currentUserReference],
                                            },
                                          ),
                                        });
                                        _model.newChat =
                                            ChatsRecord.getDocumentFromData({
                                          ...createChatsRecordData(
                                            userA: currentUserReference,
                                            userB: widget.listing?.createdBy,
                                            listingRef:
                                                widget.listing?.reference,
                                            seller: widget.listing?.createdBy,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'users': [currentUserReference],
                                            },
                                          ),
                                        }, chatsRecordReference1);

                                        var chatMessagesRecordReference =
                                            ChatMessagesRecord.collection.doc();
                                        await chatMessagesRecordReference
                                            .set(createChatMessagesRecordData(
                                          user: currentUserReference,
                                          chat: _model.newChat?.reference,
                                          text: valueOrDefault<String>(
                                            _model.textController.text,
                                            '_',
                                          ),
                                          timestamp: getCurrentTimestamp,
                                          image: widget.listing?.images.first,
                                        ));
                                        _model.message = ChatMessagesRecord
                                            .getDocumentFromData(
                                                createChatMessagesRecordData(
                                                  user: currentUserReference,
                                                  chat:
                                                      _model.newChat?.reference,
                                                  text: valueOrDefault<String>(
                                                    _model.textController.text,
                                                    '_',
                                                  ),
                                                  timestamp:
                                                      getCurrentTimestamp,
                                                  image: widget
                                                      .listing?.images.first,
                                                ),
                                                chatMessagesRecordReference);

                                        await _model.newChat!.reference.update({
                                          ...createChatsRecordData(
                                            lastMessage: _model.message?.text,
                                            lastMessageTime:
                                                getCurrentTimestamp,
                                            lastMessageSentBy:
                                                currentUserReference,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'users': FieldValue.arrayUnion(
                                                  [widget.listing?.createdBy]),
                                              'last_message_seen_by':
                                                  FieldValue.arrayUnion(
                                                      [currentUserReference]),
                                            },
                                          ),
                                        });
                                        _model.newChat2 =
                                            await ChatsRecord.getDocumentOnce(
                                                _model.newChat!.reference);

                                        context.pushNamed(
                                          'chat_2_Details',
                                          queryParameters: {
                                            'chatRef': serializeParam(
                                              _model.newChat2,
                                              ParamType.Document,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            'chatRef': _model.newChat2,
                                          },
                                        );
                                      }
                                    }

                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                          ],
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
