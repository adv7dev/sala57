// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditacao_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MeditacaoRecord> _$meditacaoRecordSerializer =
    new _$MeditacaoRecordSerializer();

class _$MeditacaoRecordSerializer
    implements StructuredSerializer<MeditacaoRecord> {
  @override
  final Iterable<Type> types = const [MeditacaoRecord, _$MeditacaoRecord];
  @override
  final String wireName = 'MeditacaoRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MeditacaoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.texto;
    if (value != null) {
      result
        ..add('texto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.img;
    if (value != null) {
      result
        ..add('img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numComents;
    if (value != null) {
      result
        ..add('numComents')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.postOwner;
    if (value != null) {
      result
        ..add('postOwner')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  MeditacaoRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MeditacaoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'texto':
          result.texto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'img':
          result.img = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'numComents':
          result.numComents = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'postOwner':
          result.postOwner = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$MeditacaoRecord extends MeditacaoRecord {
  @override
  final String titulo;
  @override
  final String texto;
  @override
  final DateTime data;
  @override
  final String img;
  @override
  final int numComents;
  @override
  final bool postOwner;
  @override
  final DocumentReference<Object> reference;

  factory _$MeditacaoRecord([void Function(MeditacaoRecordBuilder) updates]) =>
      (new MeditacaoRecordBuilder()..update(updates)).build();

  _$MeditacaoRecord._(
      {this.titulo,
      this.texto,
      this.data,
      this.img,
      this.numComents,
      this.postOwner,
      this.reference})
      : super._();

  @override
  MeditacaoRecord rebuild(void Function(MeditacaoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeditacaoRecordBuilder toBuilder() =>
      new MeditacaoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeditacaoRecord &&
        titulo == other.titulo &&
        texto == other.texto &&
        data == other.data &&
        img == other.img &&
        numComents == other.numComents &&
        postOwner == other.postOwner &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, titulo.hashCode), texto.hashCode),
                        data.hashCode),
                    img.hashCode),
                numComents.hashCode),
            postOwner.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MeditacaoRecord')
          ..add('titulo', titulo)
          ..add('texto', texto)
          ..add('data', data)
          ..add('img', img)
          ..add('numComents', numComents)
          ..add('postOwner', postOwner)
          ..add('reference', reference))
        .toString();
  }
}

class MeditacaoRecordBuilder
    implements Builder<MeditacaoRecord, MeditacaoRecordBuilder> {
  _$MeditacaoRecord _$v;

  String _titulo;
  String get titulo => _$this._titulo;
  set titulo(String titulo) => _$this._titulo = titulo;

  String _texto;
  String get texto => _$this._texto;
  set texto(String texto) => _$this._texto = texto;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  String _img;
  String get img => _$this._img;
  set img(String img) => _$this._img = img;

  int _numComents;
  int get numComents => _$this._numComents;
  set numComents(int numComents) => _$this._numComents = numComents;

  bool _postOwner;
  bool get postOwner => _$this._postOwner;
  set postOwner(bool postOwner) => _$this._postOwner = postOwner;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MeditacaoRecordBuilder() {
    MeditacaoRecord._initializeBuilder(this);
  }

  MeditacaoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titulo = $v.titulo;
      _texto = $v.texto;
      _data = $v.data;
      _img = $v.img;
      _numComents = $v.numComents;
      _postOwner = $v.postOwner;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeditacaoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MeditacaoRecord;
  }

  @override
  void update(void Function(MeditacaoRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MeditacaoRecord build() {
    final _$result = _$v ??
        new _$MeditacaoRecord._(
            titulo: titulo,
            texto: texto,
            data: data,
            img: img,
            numComents: numComents,
            postOwner: postOwner,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
