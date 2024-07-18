import '/flutter_flow/flutter_flow_util.dart';
import 'my_listing_widget.dart' show MyListingWidget;
import 'package:flutter/material.dart';

class MyListingModel extends FlutterFlowModel<MyListingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
