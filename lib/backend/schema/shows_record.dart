import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'shows_record.g.dart';

abstract class ShowsRecord implements Built<ShowsRecord, ShowsRecordBuilder> {
  static Serializer<ShowsRecord> get serializer => _$showsRecordSerializer;

  @nullable
  int get budget;

  @nullable
  int get rooms;

  @nullable
  String get client;

  @nullable
  @BuiltValueField(wireName: 'client_phone')
  String get clientPhone;

  @nullable
  String get comment;

  @nullable
  String get adress;

  @nullable
  String get datefrom;

  @nullable
  String get dateto;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ShowsRecordBuilder builder) => builder
    ..budget = 0
    ..rooms = 0
    ..client = ''
    ..clientPhone = ''
    ..comment = ''
    ..adress = ''
    ..datefrom = ''
    ..dateto = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shows');

  static Stream<ShowsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ShowsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ShowsRecord._();
  factory ShowsRecord([void Function(ShowsRecordBuilder) updates]) =
      _$ShowsRecord;

  static ShowsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createShowsRecordData({
  int budget,
  int rooms,
  String client,
  String clientPhone,
  String comment,
  String adress,
  String datefrom,
  String dateto,
}) =>
    serializers.toFirestore(
        ShowsRecord.serializer,
        ShowsRecord((s) => s
          ..budget = budget
          ..rooms = rooms
          ..client = client
          ..clientPhone = clientPhone
          ..comment = comment
          ..adress = adress
          ..datefrom = datefrom
          ..dateto = dateto));
