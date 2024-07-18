import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'listing_detail_widget.dart' show ListingDetailWidget;
import 'package:flutter/material.dart';

class ListingDetailModel extends FlutterFlowModel<ListingDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  ChatsRecord? myChats;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  ChatsRecord? myChat2;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ChatsRecord? newChat;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  ChatMessagesRecord? message;
  // Stores action output result for [Backend Call - Read Document] action in IconButton widget.
  ChatsRecord? newChat2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
