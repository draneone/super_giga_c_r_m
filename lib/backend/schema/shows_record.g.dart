// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shows_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ShowsRecord> _$showsRecordSerializer = new _$ShowsRecordSerializer();

class _$ShowsRecordSerializer implements StructuredSerializer<ShowsRecord> {
  @override
  final Iterable<Type> types = const [ShowsRecord, _$ShowsRecord];
  @override
  final String wireName = 'ShowsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ShowsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.budget;
    if (value != null) {
      result
        ..add('budget')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rooms;
    if (value != null) {
      result
        ..add('rooms')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.client;
    if (value != null) {
      result
        ..add('client')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.clientPhone;
    if (value != null) {
      result
        ..add('client_phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adress;
    if (value != null) {
      result
        ..add('adress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.datefrom;
    if (value != null) {
      result
        ..add('datefrom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateto;
    if (value != null) {
      result
        ..add('dateto')
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
  ShowsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ShowsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'budget':
          result.budget = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rooms':
          result.rooms = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'client':
          result.client = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'client_phone':
          result.clientPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'adress':
          result.adress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'datefrom':
          result.datefrom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateto':
          result.dateto = serializers.deserialize(value,
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

class _$ShowsRecord extends ShowsRecord {
  @override
  final int budget;
  @override
  final int rooms;
  @override
  final String client;
  @override
  final String clientPhone;
  @override
  final String comment;
  @override
  final String adress;
  @override
  final String datefrom;
  @override
  final String dateto;
  @override
  final DocumentReference<Object> reference;

  factory _$ShowsRecord([void Function(ShowsRecordBuilder) updates]) =>
      (new ShowsRecordBuilder()..update(updates)).build();

  _$ShowsRecord._(
      {this.budget,
      this.rooms,
      this.client,
      this.clientPhone,
      this.comment,
      this.adress,
      this.datefrom,
      this.dateto,
      this.reference})
      : super._();

  @override
  ShowsRecord rebuild(void Function(ShowsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShowsRecordBuilder toBuilder() => new ShowsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShowsRecord &&
        budget == other.budget &&
        rooms == other.rooms &&
        client == other.client &&
        clientPhone == other.clientPhone &&
        comment == other.comment &&
        adress == other.adress &&
        datefrom == other.datefrom &&
        dateto == other.dateto &&
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
                            $jc($jc($jc(0, budget.hashCode), rooms.hashCode),
                                client.hashCode),
                            clientPhone.hashCode),
                        comment.hashCode),
                    adress.hashCode),
                datefrom.hashCode),
            dateto.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ShowsRecord')
          ..add('budget', budget)
          ..add('rooms', rooms)
          ..add('client', client)
          ..add('clientPhone', clientPhone)
          ..add('comment', comment)
          ..add('adress', adress)
          ..add('datefrom', datefrom)
          ..add('dateto', dateto)
          ..add('reference', reference))
        .toString();
  }
}

class ShowsRecordBuilder implements Builder<ShowsRecord, ShowsRecordBuilder> {
  _$ShowsRecord _$v;

  int _budget;
  int get budget => _$this._budget;
  set budget(int budget) => _$this._budget = budget;

  int _rooms;
  int get rooms => _$this._rooms;
  set rooms(int rooms) => _$this._rooms = rooms;

  String _client;
  String get client => _$this._client;
  set client(String client) => _$this._client = client;

  String _clientPhone;
  String get clientPhone => _$this._clientPhone;
  set clientPhone(String clientPhone) => _$this._clientPhone = clientPhone;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  String _adress;
  String get adress => _$this._adress;
  set adress(String adress) => _$this._adress = adress;

  String _datefrom;
  String get datefrom => _$this._datefrom;
  set datefrom(String datefrom) => _$this._datefrom = datefrom;

  String _dateto;
  String get dateto => _$this._dateto;
  set dateto(String dateto) => _$this._dateto = dateto;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ShowsRecordBuilder() {
    ShowsRecord._initializeBuilder(this);
  }

  ShowsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _budget = $v.budget;
      _rooms = $v.rooms;
      _client = $v.client;
      _clientPhone = $v.clientPhone;
      _comment = $v.comment;
      _adress = $v.adress;
      _datefrom = $v.datefrom;
      _dateto = $v.dateto;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShowsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShowsRecord;
  }

  @override
  void update(void Function(ShowsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ShowsRecord build() {
    final _$result = _$v ??
        new _$ShowsRecord._(
            budget: budget,
            rooms: rooms,
            client: client,
            clientPhone: clientPhone,
            comment: comment,
            adress: adress,
            datefrom: datefrom,
            dateto: dateto,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
