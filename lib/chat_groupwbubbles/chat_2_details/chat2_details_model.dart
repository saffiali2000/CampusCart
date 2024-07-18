import '/chat_groupwbubbles/chat_thread_component/chat_thread_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat2_details_widget.dart' show Chat2DetailsWidget;
import 'package:flutter/material.dart';

class Chat2DetailsModel extends FlutterFlowModel<Chat2DetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for chat_ThreadComponent component.
  late ChatThreadComponentModel chatThreadComponentModel;

  @override
  void initState(BuildContext context) {
    chatThreadComponentModel =
        createModel(context, () => ChatThreadComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    chatThreadComponentModel.dispose();
  }
}
