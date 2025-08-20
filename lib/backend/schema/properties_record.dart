import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PropertiesRecord extends FirestoreRecord {
  PropertiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "score_school" field.
  int? _scoreSchool;
  int get scoreSchool => _scoreSchool ?? 0;
  bool hasScoreSchool() => _scoreSchool != null;

  // "score_food_3" field.
  int? _scoreFood3;
  int get scoreFood3 => _scoreFood3 ?? 0;
  bool hasScoreFood3() => _scoreFood3 != null;

  // "score_animal_3" field.
  int? _scoreAnimal3;
  int get scoreAnimal3 => _scoreAnimal3 ?? 0;
  bool hasScoreAnimal3() => _scoreAnimal3 != null;

  // "score_movies_3" field.
  int? _scoreMovies3;
  int get scoreMovies3 => _scoreMovies3 ?? 0;
  bool hasScoreMovies3() => _scoreMovies3 != null;

  // "score_body_3" field.
  int? _scoreBody3;
  int get scoreBody3 => _scoreBody3 ?? 0;
  bool hasScoreBody3() => _scoreBody3 != null;

  // "score_family_3" field.
  int? _scoreFamily3;
  int get scoreFamily3 => _scoreFamily3 ?? 0;
  bool hasScoreFamily3() => _scoreFamily3 != null;

  // "score_jobs_3" field.
  int? _scoreJobs3;
  int get scoreJobs3 => _scoreJobs3 ?? 0;
  bool hasScoreJobs3() => _scoreJobs3 != null;

  // "score_sport_3" field.
  int? _scoreSport3;
  int get scoreSport3 => _scoreSport3 ?? 0;
  bool hasScoreSport3() => _scoreSport3 != null;

  // "score_school_6" field.
  int? _scoreSchool6;
  int get scoreSchool6 => _scoreSchool6 ?? 0;
  bool hasScoreSchool6() => _scoreSchool6 != null;

  // "score_food_6" field.
  int? _scoreFood6;
  int get scoreFood6 => _scoreFood6 ?? 0;
  bool hasScoreFood6() => _scoreFood6 != null;

  // "score_animal_6" field.
  int? _scoreAnimal6;
  int get scoreAnimal6 => _scoreAnimal6 ?? 0;
  bool hasScoreAnimal6() => _scoreAnimal6 != null;

  // "score_movies_6" field.
  int? _scoreMovies6;
  int get scoreMovies6 => _scoreMovies6 ?? 0;
  bool hasScoreMovies6() => _scoreMovies6 != null;

  // "score_body_6" field.
  int? _scoreBody6;
  int get scoreBody6 => _scoreBody6 ?? 0;
  bool hasScoreBody6() => _scoreBody6 != null;

  // "score_family_6" field.
  int? _scoreFamily6;
  int get scoreFamily6 => _scoreFamily6 ?? 0;
  bool hasScoreFamily6() => _scoreFamily6 != null;

  // "score_jobs_6" field.
  int? _scoreJobs6;
  int get scoreJobs6 => _scoreJobs6 ?? 0;
  bool hasScoreJobs6() => _scoreJobs6 != null;

  // "score_sport_6" field.
  int? _scoreSport6;
  int get scoreSport6 => _scoreSport6 ?? 0;
  bool hasScoreSport6() => _scoreSport6 != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _scoreSchool = castToType<int>(snapshotData['score_school']);
    _scoreFood3 = castToType<int>(snapshotData['score_food_3']);
    _scoreAnimal3 = castToType<int>(snapshotData['score_animal_3']);
    _scoreMovies3 = castToType<int>(snapshotData['score_movies_3']);
    _scoreBody3 = castToType<int>(snapshotData['score_body_3']);
    _scoreFamily3 = castToType<int>(snapshotData['score_family_3']);
    _scoreJobs3 = castToType<int>(snapshotData['score_jobs_3']);
    _scoreSport3 = castToType<int>(snapshotData['score_sport_3']);
    _scoreSchool6 = castToType<int>(snapshotData['score_school_6']);
    _scoreFood6 = castToType<int>(snapshotData['score_food_6']);
    _scoreAnimal6 = castToType<int>(snapshotData['score_animal_6']);
    _scoreMovies6 = castToType<int>(snapshotData['score_movies_6']);
    _scoreBody6 = castToType<int>(snapshotData['score_body_6']);
    _scoreFamily6 = castToType<int>(snapshotData['score_family_6']);
    _scoreJobs6 = castToType<int>(snapshotData['score_jobs_6']);
    _scoreSport6 = castToType<int>(snapshotData['score_sport_6']);
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('properties');

  static Stream<PropertiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PropertiesRecord.fromSnapshot(s));

  static Future<PropertiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PropertiesRecord.fromSnapshot(s));

  static PropertiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PropertiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PropertiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PropertiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PropertiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PropertiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPropertiesRecordData({
  String? uid,
  String? userName,
  DateTime? createdTime,
  DateTime? editedTime,
  String? email,
  String? phoneNumber,
  int? scoreSchool,
  int? scoreFood3,
  int? scoreAnimal3,
  int? scoreMovies3,
  int? scoreBody3,
  int? scoreFamily3,
  int? scoreJobs3,
  int? scoreSport3,
  int? scoreSchool6,
  int? scoreFood6,
  int? scoreAnimal6,
  int? scoreMovies6,
  int? scoreBody6,
  int? scoreFamily6,
  int? scoreJobs6,
  int? scoreSport6,
  String? displayName,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'user_name': userName,
      'created_time': createdTime,
      'edited_time': editedTime,
      'email': email,
      'phone_number': phoneNumber,
      'score_school': scoreSchool,
      'score_food_3': scoreFood3,
      'score_animal_3': scoreAnimal3,
      'score_movies_3': scoreMovies3,
      'score_body_3': scoreBody3,
      'score_family_3': scoreFamily3,
      'score_jobs_3': scoreJobs3,
      'score_sport_3': scoreSport3,
      'score_school_6': scoreSchool6,
      'score_food_6': scoreFood6,
      'score_animal_6': scoreAnimal6,
      'score_movies_6': scoreMovies6,
      'score_body_6': scoreBody6,
      'score_family_6': scoreFamily6,
      'score_jobs_6': scoreJobs6,
      'score_sport_6': scoreSport6,
      'display_name': displayName,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class PropertiesRecordDocumentEquality implements Equality<PropertiesRecord> {
  const PropertiesRecordDocumentEquality();

  @override
  bool equals(PropertiesRecord? e1, PropertiesRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.userName == e2?.userName &&
        e1?.createdTime == e2?.createdTime &&
        e1?.editedTime == e2?.editedTime &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.scoreSchool == e2?.scoreSchool &&
        e1?.scoreFood3 == e2?.scoreFood3 &&
        e1?.scoreAnimal3 == e2?.scoreAnimal3 &&
        e1?.scoreMovies3 == e2?.scoreMovies3 &&
        e1?.scoreBody3 == e2?.scoreBody3 &&
        e1?.scoreFamily3 == e2?.scoreFamily3 &&
        e1?.scoreJobs3 == e2?.scoreJobs3 &&
        e1?.scoreSport3 == e2?.scoreSport3 &&
        e1?.scoreSchool6 == e2?.scoreSchool6 &&
        e1?.scoreFood6 == e2?.scoreFood6 &&
        e1?.scoreAnimal6 == e2?.scoreAnimal6 &&
        e1?.scoreMovies6 == e2?.scoreMovies6 &&
        e1?.scoreBody6 == e2?.scoreBody6 &&
        e1?.scoreFamily6 == e2?.scoreFamily6 &&
        e1?.scoreJobs6 == e2?.scoreJobs6 &&
        e1?.scoreSport6 == e2?.scoreSport6 &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl;
  }

  @override
  int hash(PropertiesRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.userName,
        e?.createdTime,
        e?.editedTime,
        e?.email,
        e?.phoneNumber,
        e?.scoreSchool,
        e?.scoreFood3,
        e?.scoreAnimal3,
        e?.scoreMovies3,
        e?.scoreBody3,
        e?.scoreFamily3,
        e?.scoreJobs3,
        e?.scoreSport3,
        e?.scoreSchool6,
        e?.scoreFood6,
        e?.scoreAnimal6,
        e?.scoreMovies6,
        e?.scoreBody6,
        e?.scoreFamily6,
        e?.scoreJobs6,
        e?.scoreSport6,
        e?.displayName,
        e?.photoUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is PropertiesRecord;
}
