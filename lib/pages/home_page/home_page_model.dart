import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool? isSearching = false;

  List<ListingsRecord> listings = [];
  void addToListings(ListingsRecord item) => listings.add(item);
  void removeFromListings(ListingsRecord item) => listings.remove(item);
  void removeAtIndexFromListings(int index) => listings.removeAt(index);
  void insertAtIndexInListings(int index, ListingsRecord item) =>
      listings.insert(index, item);
  void updateListingsAtIndex(int index, Function(ListingsRecord) updateFn) =>
      listings[index] = updateFn(listings[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in homePage widget.
  List<ListingsRecord>? listingsNew;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ListingsRecord> simpleSearchResults = [];
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
  }
}
