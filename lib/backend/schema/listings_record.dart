import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListingsRecord extends FirestoreRecord {
  ListingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  bool hasAuthor() => _author != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "listingid" field.
  int? _listingid;
  int get listingid => _listingid ?? 0;
  bool hasListingid() => _listingid != null;

  // "images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  void _initializeFields() {
    _author = snapshotData['author'] as String?;
    _condition = snapshotData['condition'] as String?;
    _description = snapshotData['description'] as String?;
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _subject = snapshotData['subject'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _listingid = castToType<int>(snapshotData['listingid']);
    _images = getDataList(snapshotData['images']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('listings');

  static Stream<ListingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListingsRecord.fromSnapshot(s));

  static Future<ListingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListingsRecord.fromSnapshot(s));

  static ListingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListingsRecordData({
  String? author,
  String? condition,
  String? description,
  String? name,
  double? price,
  String? subject,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DocumentReference? createdBy,
  int? listingid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'author': author,
      'condition': condition,
      'description': description,
      'name': name,
      'price': price,
      'subject': subject,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'created_by': createdBy,
      'listingid': listingid,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListingsRecordDocumentEquality implements Equality<ListingsRecord> {
  const ListingsRecordDocumentEquality();

  @override
  bool equals(ListingsRecord? e1, ListingsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.author == e2?.author &&
        e1?.condition == e2?.condition &&
        e1?.description == e2?.description &&
        e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.subject == e2?.subject &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.createdBy == e2?.createdBy &&
        e1?.listingid == e2?.listingid &&
        listEquality.equals(e1?.images, e2?.images);
  }

  @override
  int hash(ListingsRecord? e) => const ListEquality().hash([
        e?.author,
        e?.condition,
        e?.description,
        e?.name,
        e?.price,
        e?.subject,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.createdBy,
        e?.listingid,
        e?.images
      ]);

  @override
  bool isValidKey(Object? o) => o is ListingsRecord;
}
