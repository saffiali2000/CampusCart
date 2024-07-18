import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'my_listing_item_model.dart';
export 'my_listing_item_model.dart';

class MyListingItemWidget extends StatefulWidget {
  const MyListingItemWidget({
    super.key,
    required this.listingItem,
  });

  final ListingsRecord? listingItem;

  @override
  State<MyListingItemWidget> createState() => _MyListingItemWidgetState();
}

class _MyListingItemWidgetState extends State<MyListingItemWidget>
    with TickerProviderStateMixin {
  late MyListingItemModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyListingItemModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.imageList = widget.listingItem!.images.toList().cast<String>();
      setState(() {});
    });

    _model.textController1 ??=
        TextEditingController(text: widget.listingItem?.name);
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??=
        TextEditingController(text: widget.listingItem?.price.toString());
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??=
        TextEditingController(text: widget.listingItem?.subject);
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??=
        TextEditingController(text: widget.listingItem?.author);
    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textController5 ??=
        TextEditingController(text: widget.listingItem?.description);
    _model.textFieldFocusNode5 ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 110.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 28.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('myListing');
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Update Listing',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      fontSize: 32.0,
                      letterSpacing: 0.0,
                    ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 16.0),
                child: Text(
                  'Fill out the form below to update the listing.',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Manrope',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextFormField(
                    controller: _model.textController1,
                    focusNode: _model.textFieldFocusNode1,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Title',
                      labelStyle: FlutterFlowTheme.of(context)
                          .headlineSmall
                          .override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Manrope',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 12.0),
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Outfit',
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).primary,
                    validator:
                        _model.textController1Validator.asValidator(context),
                  ),
                  TextFormField(
                    controller: _model.textController2,
                    focusNode: _model.textFieldFocusNode2,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Price',
                      labelStyle: FlutterFlowTheme.of(context)
                          .headlineSmall
                          .override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Manrope',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 12.0),
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Outfit',
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    cursorColor: FlutterFlowTheme.of(context).primary,
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                  TextFormField(
                    controller: _model.textController3,
                    focusNode: _model.textFieldFocusNode3,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Subject',
                      labelStyle: FlutterFlowTheme.of(context)
                          .headlineSmall
                          .override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Manrope',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 12.0),
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Outfit',
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).primary,
                    validator:
                        _model.textController3Validator.asValidator(context),
                  ),
                  TextFormField(
                    controller: _model.textController4,
                    focusNode: _model.textFieldFocusNode4,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Author',
                      labelStyle: FlutterFlowTheme.of(context)
                          .headlineSmall
                          .override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Manrope',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 12.0, 16.0, 12.0),
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Outfit',
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).primary,
                    validator:
                        _model.textController4Validator.asValidator(context),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: FlutterFlowChoiceChips(
                      options: const [
                        ChipData('New'),
                        ChipData('Used - Like New'),
                        ChipData('Used - Good'),
                        ChipData('Used - Fair')
                      ],
                      onChanged: (val) => setState(
                          () => _model.choiceChipsValue = val?.firstOrNull),
                      selectedChipStyle: ChipStyle(
                        backgroundColor: FlutterFlowTheme.of(context).primary,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Manrope',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                        iconColor: FlutterFlowTheme.of(context).primaryText,
                        iconSize: 18.0,
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      unselectedChipStyle: ChipStyle(
                        backgroundColor: FlutterFlowTheme.of(context).alternate,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Manrope',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                        iconColor: FlutterFlowTheme.of(context).secondaryText,
                        iconSize: 18.0,
                        labelPadding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      chipSpacing: 12.0,
                      rowSpacing: 12.0,
                      multiselect: false,
                      alignment: WrapAlignment.start,
                      controller: _model.choiceChipsValueController ??=
                          FormFieldController<List<String>>(
                        [],
                      ),
                      wrapped: false,
                    ),
                  ),
                  TextFormField(
                    controller: _model.textController5,
                    focusNode: _model.textFieldFocusNode5,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Manrope',
                                letterSpacing: 0.0,
                              ),
                      hintText: 'Short Description of the textbook',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Manrope',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      contentPadding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 24.0, 16.0, 12.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          letterSpacing: 0.0,
                        ),
                    maxLines: 16,
                    minLines: 6,
                    cursorColor: FlutterFlowTheme.of(context).primary,
                    validator:
                        _model.textController5Validator.asValidator(context),
                  ),
                ]
                    .divide(const SizedBox(height: 1.0))
                    .addToStart(const SizedBox(height: 12.0)),
              ),
              Container(
                height: 200.0,
                decoration: const BoxDecoration(),
                child: Builder(
                  builder: (context) {
                    final image = _model.imageList.toList().take(5).toList();

                    return ReorderableListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: image.length,
                      itemBuilder: (context, imageIndex) {
                        final imageItem = image[imageIndex];
                        return Container(
                          key: ValueKey("ListView_i9aq2j30" '_' +
                              imageIndex.toString()),
                          child: SizedBox(
                            width: 200.0,
                            height: 200.0,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 20.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.network(
                                        imageItem,
                                        width: 300.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.9, -0.6),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    fillColor:
                                        FlutterFlowTheme.of(context).error,
                                    icon: Icon(
                                      Icons.clear,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      await FirebaseStorage.instance
                                          .refFromURL(imageItem)
                                          .delete();
                                      _model.removeFromImageList(imageItem);
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      onReorder: (int reorderableOldIndex,
                          int reorderableNewIndex) async {
                        _model.imageList = functions
                            .theNewList(
                                _model.imageList.toList(),
                                reorderableOldIndex,
                                reorderableNewIndex.toString())
                            .toList()
                            .cast<String>();
                        setState(() {});

                        setState(() {});
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    final selectedMedia = await selectMedia(
                      maxWidth: 1080.00,
                      maxHeight: 1080.00,
                      mediaSource: MediaSource.photoGallery,
                      multiImage: true,
                    );
                    if (selectedMedia != null &&
                        selectedMedia.every((m) =>
                            validateFileFormat(m.storagePath, context))) {
                      setState(() => _model.isDataUploading = true);
                      var selectedUploadedFiles = <FFUploadedFile>[];

                      var downloadUrls = <String>[];
                      try {
                        selectedUploadedFiles = selectedMedia
                            .map((m) => FFUploadedFile(
                                  name: m.storagePath.split('/').last,
                                  bytes: m.bytes,
                                  height: m.dimensions?.height,
                                  width: m.dimensions?.width,
                                  blurHash: m.blurHash,
                                ))
                            .toList();

                        downloadUrls = (await Future.wait(
                          selectedMedia.map(
                            (m) async =>
                                await uploadData(m.storagePath, m.bytes),
                          ),
                        ))
                            .where((u) => u != null)
                            .map((u) => u!)
                            .toList();
                      } finally {
                        _model.isDataUploading = false;
                      }
                      if (selectedUploadedFiles.length ==
                              selectedMedia.length &&
                          downloadUrls.length == selectedMedia.length) {
                        setState(() {
                          _model.uploadedLocalFiles = selectedUploadedFiles;
                          _model.uploadedFileUrls = downloadUrls;
                        });
                      } else {
                        setState(() {});
                        return;
                      }
                    }

                    _model.imageList =
                        _model.uploadedFileUrls.toList().cast<String>();
                    setState(() {});
                  },
                  child: Container(
                    width: double.infinity,
                    constraints: const BoxConstraints(
                      maxWidth: 500.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.add_a_photo_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 32.0,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Upload Images',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Manrope',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 12.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await widget.listingItem!.reference.update({
                      ...createListingsRecordData(
                        author: _model.textController4.text,
                        condition: _model.choiceChipsValue,
                        description: _model.textController5.text,
                        name: _model.textController1.text,
                        price: double.tryParse(_model.textController2.text),
                        subject: _model.textController3.text,
                      ),
                      ...mapToFirestore(
                        {
                          'created_time': FieldValue.serverTimestamp(),
                          'images': _model.uploadedFileUrls.isNotEmpty
                              ? _model.imageList.take(5).toList()
                              : widget.listingItem?.images,
                        },
                      ),
                    });
                    Navigator.pop(context);
                  },
                  text: 'Update Listing',
                  icon: const Icon(
                    Icons.book_outlined,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 54.0,
                    padding: const EdgeInsets.all(0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Manrope',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 4.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await widget.listingItem!.reference.delete();
                    Navigator.pop(context);
                  },
                  text: 'Delete Listing',
                  icon: const Icon(
                    Icons.delete_outline_sharp,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 54.0,
                    padding: const EdgeInsets.all(0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).error,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Manrope',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 4.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
