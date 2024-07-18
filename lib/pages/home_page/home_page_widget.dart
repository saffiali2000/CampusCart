import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:text_search/text_search.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isSearching = true;
      setState(() {});
      _model.listingsNew = await queryListingsRecordOnce(
        limit: 30,
      );
      _model.listings = _model.listingsNew!.toList().cast<ListingsRecord>();
      _model.isSearching = false;
      setState(() {});
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    _model.tabBarController = TabController(
      vsync: this,
      length: 1,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          1.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(40.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 12.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: SizedBox(
                              width: 200.0,
                              child: TextFormField(
                                controller: _model.textController,
                                focusNode: _model.textFieldFocusNode,
                                onFieldSubmitted: (_) async {
                                  await queryListingsRecordOnce()
                                      .then(
                                        (records) => _model
                                            .simpleSearchResults = TextSearch(
                                          records
                                              .map(
                                                (record) =>
                                                    TextSearchItem.fromTerms(
                                                        record, [
                                                  record.author,
                                                  record.name,
                                                  record.subject,
                                                  record.description
                                                ]),
                                              )
                                              .toList(),
                                        )
                                            .search(_model.textController.text)
                                            .map((r) => r.object)
                                            .toList(),
                                      )
                                      .onError((_, __) =>
                                          _model.simpleSearchResults = [])
                                      .whenComplete(() => setState(() {}));

                                  _model.listings = _model.simpleSearchResults
                                      .toList()
                                      .cast<ListingsRecord>();
                                  setState(() {});
                                },
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Search listings...',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        letterSpacing: 0.0,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Manrope',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
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
                                cursorColor:
                                    FlutterFlowTheme.of(context).primary,
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.white,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor: const Color(0x4CFFFFFF),
                          icon: Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            setState(() {
                              _model.textController?.clear();
                            });
                            _model.listings = _model.listingsNew!
                                .toList()
                                .cast<ListingsRecord>();
                            _model.isSearching = false;
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    if (_model.isSearching ?? false) {
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Searching...',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Column(
                        children: [
                          Align(
                            alignment: const Alignment(0.0, 0),
                            child: TabBar(
                              labelColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              unselectedLabelColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: 'Manrope',
                                    letterSpacing: 0.0,
                                  ),
                              unselectedLabelStyle: const TextStyle(),
                              indicatorColor:
                                  FlutterFlowTheme.of(context).primary,
                              padding: const EdgeInsets.all(4.0),
                              tabs: const [
                                Tab(
                                  text: 'Browse',
                                  icon: Icon(
                                    Icons.book,
                                  ),
                                ),
                              ],
                              controller: _model.tabBarController,
                              onTap: (i) async {
                                [() async {}][i]();
                              },
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: _model.tabBarController,
                              children: [
                                SingleChildScrollView(
                                  primary: false,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Builder(
                                        builder: (context) {
                                          final listing =
                                              _model.listings.toList();

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: listing.length,
                                            itemBuilder:
                                                (context, listingIndex) {
                                              final listingItem =
                                                  listing[listingIndex];
                                              return Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 12.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await authManager
                                                          .refreshUser();
                                                      if (currentUserEmailVerified) {
                                                        context.pushNamed(
                                                          'listingDetail',
                                                          queryParameters: {
                                                            'listing':
                                                                serializeParam(
                                                              listingItem,
                                                              ParamType
                                                                  .Document,
                                                            ),
                                                          }.withoutNulls,
                                                          extra: <String,
                                                              dynamic>{
                                                            'listing':
                                                                listingItem,
                                                          },
                                                        );
                                                      } else {
                                                        var confirmDialogResponse =
                                                            await showDialog<
                                                                    bool>(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return AlertDialog(
                                                                      title: const Text(
                                                                          'Unverified Email address'),
                                                                      content: const Text(
                                                                          'in order to add a listing you have to verify your email address'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () => Navigator.pop(
                                                                              alertDialogContext,
                                                                              false),
                                                                          child:
                                                                              const Text('Cancel'),
                                                                        ),
                                                                        TextButton(
                                                                          onPressed: () => Navigator.pop(
                                                                              alertDialogContext,
                                                                              true),
                                                                          child:
                                                                              const Text('Send Verification link'),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                ) ??
                                                                false;
                                                        if (confirmDialogResponse) {
                                                          await authManager
                                                              .sendEmailVerification();
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .clearSnackBars();
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'Check your inbox to verify your email address',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: const Duration(
                                                                  milliseconds:
                                                                      2300),
                                                              backgroundColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                            ),
                                                          );
                                                        }
                                                      }
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        if (listingItem
                                                            .images.isNotEmpty)
                                                          Builder(
                                                            builder: (context) {
                                                              final images =
                                                                  listingItem
                                                                      .images
                                                                      .toList();

                                                              return SingleChildScrollView(
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: List
                                                                      .generate(
                                                                          images
                                                                              .length,
                                                                          (imagesIndex) {
                                                                    final imagesItem =
                                                                        images[
                                                                            imagesIndex];
                                                                    return Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          8.0,
                                                                          16.0,
                                                                          12.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(16.0),
                                                                        child: Image
                                                                            .network(
                                                                          imagesItem,
                                                                          width:
                                                                              340.0,
                                                                          height:
                                                                              230.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      4.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                listingItem.name
                                                                    .maybeHandleOverflow(
                                                                  maxChars: 30,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Manrope',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  formatNumber(
                                                                    listingItem
                                                                        .price,
                                                                    formatType:
                                                                        FormatType
                                                                            .decimal,
                                                                    decimalType:
                                                                        DecimalType
                                                                            .periodDecimal,
                                                                    currency:
                                                                        '\$',
                                                                  ).maybeHandleOverflow(
                                                                      maxChars:
                                                                          10),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Outfit',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      4.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  listingItem
                                                                      .subject
                                                                      .maybeHandleOverflow(
                                                                          maxChars:
                                                                              30),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            4.0,
                                                                            0.0),
                                                                child: Text(
                                                                  listingItem
                                                                      .condition,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
