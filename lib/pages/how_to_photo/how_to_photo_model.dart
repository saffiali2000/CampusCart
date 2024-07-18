import '/flutter_flow/flutter_flow_util.dart';
import 'how_to_photo_widget.dart' show HowToPhotoWidget;
import 'package:flutter/material.dart';

class HowToPhotoModel extends FlutterFlowModel<HowToPhotoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
