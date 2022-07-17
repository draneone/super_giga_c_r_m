import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'object_record.g.dart';

abstract class ObjectRecord
    implements Built<ObjectRecord, ObjectRecordBuilder> {
  static Serializer<ObjectRecord> get serializer => _$objectRecordSerializer;

  @nullable
  int get rooms;

  @nullable
  int get summ;

  @nullable
  String get adress;

  @nullable
  bool get newmade;

  @nullable
  @BuiltValueField(wireName: 'JK')
  String get jk;

  @nullable
  int get floor;

  @nullable
  int get area;

  @nullable
  String get photo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ObjectRecordBuilder builder) => builder
    ..rooms = 0
    ..summ = 0
    ..adress = ''
    ..newmade = false
    ..jk = ''
    ..floor = 0
    ..area = 0
    ..photo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('object');

  static Stream<ObjectRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ObjectRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ObjectRecord._();
  factory ObjectRecord([void Function(ObjectRecordBuilder) updates]) =
      _$ObjectRecord;

  static ObjectRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createObjectRecordData({
  int rooms,
  int summ,
  String adress,
  bool newmade,
  String jk,
  int floor,
  int area,
  String photo,
}) =>
    serializers.toFirestore(
        ObjectRecord.serializer,
        ObjectRecord((o) => o
          ..rooms = rooms
          ..summ = summ
          ..adress = adress
          ..newmade = newmade
          ..jk = jk
          ..floor = floor
          ..area = area
          ..photo = photo));
