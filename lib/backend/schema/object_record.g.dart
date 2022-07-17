// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ObjectRecord> _$objectRecordSerializer =
    new _$ObjectRecordSerializer();

class _$ObjectRecordSerializer implements StructuredSerializer<ObjectRecord> {
  @override
  final Iterable<Type> types = const [ObjectRecord, _$ObjectRecord];
  @override
  final String wireName = 'ObjectRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ObjectRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.rooms;
    if (value != null) {
      result
        ..add('rooms')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.summ;
    if (value != null) {
      result
        ..add('summ')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.adress;
    if (value != null) {
      result
        ..add('adress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.newmade;
    if (value != null) {
      result
        ..add('newmade')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.jk;
    if (value != null) {
      result
        ..add('JK')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.floor;
    if (value != null) {
      result
        ..add('floor')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.area;
    if (value != null) {
      result
        ..add('area')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ObjectRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ObjectRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'rooms':
          result.rooms = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'summ':
          result.summ = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'adress':
          result.adress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'newmade':
          result.newmade = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'JK':
          result.jk = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'floor':
          result.floor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'area':
          result.area = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ObjectRecord extends ObjectRecord {
  @override
  final int rooms;
  @override
  final int summ;
  @override
  final String adress;
  @override
  final bool newmade;
  @override
  final String jk;
  @override
  final int floor;
  @override
  final int area;
  @override
  final String photo;
  @override
  final DocumentReference<Object> reference;

  factory _$ObjectRecord([void Function(ObjectRecordBuilder) updates]) =>
      (new ObjectRecordBuilder()..update(updates)).build();

  _$ObjectRecord._(
      {this.rooms,
      this.summ,
      this.adress,
      this.newmade,
      this.jk,
      this.floor,
      this.area,
      this.photo,
      this.reference})
      : super._();

  @override
  ObjectRecord rebuild(void Function(ObjectRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectRecordBuilder toBuilder() => new ObjectRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectRecord &&
        rooms == other.rooms &&
        summ == other.summ &&
        adress == other.adress &&
        newmade == other.newmade &&
        jk == other.jk &&
        floor == other.floor &&
        area == other.area &&
        photo == other.photo &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, rooms.hashCode), summ.hashCode),
                                adress.hashCode),
                            newmade.hashCode),
                        jk.hashCode),
                    floor.hashCode),
                area.hashCode),
            photo.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ObjectRecord')
          ..add('rooms', rooms)
          ..add('summ', summ)
          ..add('adress', adress)
          ..add('newmade', newmade)
          ..add('jk', jk)
          ..add('floor', floor)
          ..add('area', area)
          ..add('photo', photo)
          ..add('reference', reference))
        .toString();
  }
}

class ObjectRecordBuilder
    implements Builder<ObjectRecord, ObjectRecordBuilder> {
  _$ObjectRecord _$v;

  int _rooms;
  int get rooms => _$this._rooms;
  set rooms(int rooms) => _$this._rooms = rooms;

  int _summ;
  int get summ => _$this._summ;
  set summ(int summ) => _$this._summ = summ;

  String _adress;
  String get adress => _$this._adress;
  set adress(String adress) => _$this._adress = adress;

  bool _newmade;
  bool get newmade => _$this._newmade;
  set newmade(bool newmade) => _$this._newmade = newmade;

  String _jk;
  String get jk => _$this._jk;
  set jk(String jk) => _$this._jk = jk;

  int _floor;
  int get floor => _$this._floor;
  set floor(int floor) => _$this._floor = floor;

  int _area;
  int get area => _$this._area;
  set area(int area) => _$this._area = area;

  String _photo;
  String get photo => _$this._photo;
  set photo(String photo) => _$this._photo = photo;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ObjectRecordBuilder() {
    ObjectRecord._initializeBuilder(this);
  }

  ObjectRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rooms = $v.rooms;
      _summ = $v.summ;
      _adress = $v.adress;
      _newmade = $v.newmade;
      _jk = $v.jk;
      _floor = $v.floor;
      _area = $v.area;
      _photo = $v.photo;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObjectRecord;
  }

  @override
  void update(void Function(ObjectRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ObjectRecord build() {
    final _$result = _$v ??
        new _$ObjectRecord._(
            rooms: rooms,
            summ: summ,
            adress: adress,
            newmade: newmade,
            jk: jk,
            floor: floor,
            area: area,
            photo: photo,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
