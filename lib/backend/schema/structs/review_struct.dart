// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ReviewStruct extends FFFirebaseStruct {
  ReviewStruct({
    int? communication,
    int? pricing,
    int? itemDescription,
    double? avergareRating,
    String? note,
    DocumentReference? users,
    DocumentReference? chat,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _communication = communication,
        _pricing = pricing,
        _itemDescription = itemDescription,
        _avergareRating = avergareRating,
        _note = note,
        _users = users,
        _chat = chat,
        super(firestoreUtilData);

  // "communication" field.
  int? _communication;
  int get communication => _communication ?? 0;
  set communication(int? val) => _communication = val;

  void incrementCommunication(int amount) =>
      communication = communication + amount;

  bool hasCommunication() => _communication != null;

  // "pricing" field.
  int? _pricing;
  int get pricing => _pricing ?? 0;
  set pricing(int? val) => _pricing = val;

  void incrementPricing(int amount) => pricing = pricing + amount;

  bool hasPricing() => _pricing != null;

  // "itemDescription" field.
  int? _itemDescription;
  int get itemDescription => _itemDescription ?? 0;
  set itemDescription(int? val) => _itemDescription = val;

  void incrementItemDescription(int amount) =>
      itemDescription = itemDescription + amount;

  bool hasItemDescription() => _itemDescription != null;

  // "avergareRating" field.
  double? _avergareRating;
  double get avergareRating => _avergareRating ?? 0.0;
  set avergareRating(double? val) => _avergareRating = val;

  void incrementAvergareRating(double amount) =>
      avergareRating = avergareRating + amount;

  bool hasAvergareRating() => _avergareRating != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '_';
  set note(String? val) => _note = val;

  bool hasNote() => _note != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  set users(DocumentReference? val) => _users = val;

  bool hasUsers() => _users != null;

  // "chat" field.
  DocumentReference? _chat;
  DocumentReference? get chat => _chat;
  set chat(DocumentReference? val) => _chat = val;

  bool hasChat() => _chat != null;

  static ReviewStruct fromMap(Map<String, dynamic> data) => ReviewStruct(
        communication: castToType<int>(data['communication']),
        pricing: castToType<int>(data['pricing']),
        itemDescription: castToType<int>(data['itemDescription']),
        avergareRating: castToType<double>(data['avergareRating']),
        note: data['note'] as String?,
        users: data['users'] as DocumentReference?,
        chat: data['chat'] as DocumentReference?,
      );

  static ReviewStruct? maybeFromMap(dynamic data) =>
      data is Map ? ReviewStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'communication': _communication,
        'pricing': _pricing,
        'itemDescription': _itemDescription,
        'avergareRating': _avergareRating,
        'note': _note,
        'users': _users,
        'chat': _chat,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'communication': serializeParam(
          _communication,
          ParamType.int,
        ),
        'pricing': serializeParam(
          _pricing,
          ParamType.int,
        ),
        'itemDescription': serializeParam(
          _itemDescription,
          ParamType.int,
        ),
        'avergareRating': serializeParam(
          _avergareRating,
          ParamType.double,
        ),
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
        'users': serializeParam(
          _users,
          ParamType.DocumentReference,
        ),
        'chat': serializeParam(
          _chat,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ReviewStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReviewStruct(
        communication: deserializeParam(
          data['communication'],
          ParamType.int,
          false,
        ),
        pricing: deserializeParam(
          data['pricing'],
          ParamType.int,
          false,
        ),
        itemDescription: deserializeParam(
          data['itemDescription'],
          ParamType.int,
          false,
        ),
        avergareRating: deserializeParam(
          data['avergareRating'],
          ParamType.double,
          false,
        ),
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
        users: deserializeParam(
          data['users'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        chat: deserializeParam(
          data['chat'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['chats'],
        ),
      );

  @override
  String toString() => 'ReviewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReviewStruct &&
        communication == other.communication &&
        pricing == other.pricing &&
        itemDescription == other.itemDescription &&
        avergareRating == other.avergareRating &&
        note == other.note &&
        users == other.users &&
        chat == other.chat;
  }

  @override
  int get hashCode => const ListEquality().hash([
        communication,
        pricing,
        itemDescription,
        avergareRating,
        note,
        users,
        chat
      ]);
}

ReviewStruct createReviewStruct({
  int? communication,
  int? pricing,
  int? itemDescription,
  double? avergareRating,
  String? note,
  DocumentReference? users,
  DocumentReference? chat,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReviewStruct(
      communication: communication,
      pricing: pricing,
      itemDescription: itemDescription,
      avergareRating: avergareRating,
      note: note,
      users: users,
      chat: chat,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReviewStruct? updateReviewStruct(
  ReviewStruct? review, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    review
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReviewStructData(
  Map<String, dynamic> firestoreData,
  ReviewStruct? review,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (review == null) {
    return;
  }
  if (review.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && review.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final reviewData = getReviewFirestoreData(review, forFieldValue);
  final nestedData = reviewData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = review.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReviewFirestoreData(
  ReviewStruct? review, [
  bool forFieldValue = false,
]) {
  if (review == null) {
    return {};
  }
  final firestoreData = mapToFirestore(review.toMap());

  // Add any Firestore field values
  review.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReviewListFirestoreData(
  List<ReviewStruct>? reviews,
) =>
    reviews?.map((e) => getReviewFirestoreData(e, true)).toList() ?? [];
