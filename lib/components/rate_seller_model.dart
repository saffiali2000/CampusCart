import '/flutter_flow/flutter_flow_util.dart';
import 'rate_seller_widget.dart' show RateSellerWidget;
import 'package:flutter/material.dart';

class RateSellerModel extends FlutterFlowModel<RateSellerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // State field(s) for RatingBar widget.
  double? ratingBarValue3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
