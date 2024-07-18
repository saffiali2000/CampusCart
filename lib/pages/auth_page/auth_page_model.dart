import '/flutter_flow/flutter_flow_util.dart';
import 'auth_page_widget.dart' show AuthPageWidget;
import 'package:flutter/material.dart';

class AuthPageModel extends FlutterFlowModel<AuthPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for displayName widget.
  FocusNode? displayNameFocusNode;
  TextEditingController? displayNameTextController;
  String? Function(BuildContext, String?)? displayNameTextControllerValidator;
  String? _displayNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for emailAddress1 widget.
  FocusNode? emailAddress1FocusNode;
  TextEditingController? emailAddress1TextController;
  String? Function(BuildContext, String?)? emailAddress1TextControllerValidator;
  String? _emailAddress1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for password1 widget.
  FocusNode? password1FocusNode;
  TextEditingController? password1TextController;
  late bool password1Visibility;
  String? Function(BuildContext, String?)? password1TextControllerValidator;
  String? _password1TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Min required characters is 8';
    }

    if (!RegExp(
            '^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@\$!%*?&])[A-Za-z\\d@\$!%*?&]{8,}\$')
        .hasMatch(val)) {
      return 'Min 8 characters \nat least one uppercase letter\nat least one lowercase letter\nat least one number\nat least one special character';
    }
    return null;
  }

  // State field(s) for confirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  String? _confirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for emailAddress2 widget.
  FocusNode? emailAddress2FocusNode;
  TextEditingController? emailAddress2TextController;
  String? Function(BuildContext, String?)? emailAddress2TextControllerValidator;
  // State field(s) for password2 widget.
  FocusNode? password2FocusNode;
  TextEditingController? password2TextController;
  late bool password2Visibility;
  String? Function(BuildContext, String?)? password2TextControllerValidator;

  @override
  void initState(BuildContext context) {
    displayNameTextControllerValidator = _displayNameTextControllerValidator;
    emailAddress1TextControllerValidator =
        _emailAddress1TextControllerValidator;
    password1Visibility = false;
    password1TextControllerValidator = _password1TextControllerValidator;
    confirmPasswordVisibility = false;
    confirmPasswordTextControllerValidator =
        _confirmPasswordTextControllerValidator;
    password2Visibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    displayNameFocusNode?.dispose();
    displayNameTextController?.dispose();

    emailAddress1FocusNode?.dispose();
    emailAddress1TextController?.dispose();

    password1FocusNode?.dispose();
    password1TextController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();

    emailAddress2FocusNode?.dispose();
    emailAddress2TextController?.dispose();

    password2FocusNode?.dispose();
    password2TextController?.dispose();
  }
}
