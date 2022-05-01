// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_oracao_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PedidoOracaoRecord> _$pedidoOracaoRecordSerializer =
    new _$PedidoOracaoRecordSerializer();

class _$PedidoOracaoRecordSerializer
    implements StructuredSerializer<PedidoOracaoRecord> {
  @override
  final Iterable<Type> types = const [PedidoOracaoRecord, _$PedidoOracaoRecord];
  @override
  final String wireName = 'PedidoOracaoRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PedidoOracaoRecord object,
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
    value = object.pedido;
    if (value != null) {
      result
        ..add('pedido')
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
    value = object.postOwner;
    if (value != null) {
      result
        ..add('postOwner')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.numComments;
    if (value != null) {
      result
        ..add('numComments')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.likes;
    if (value != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.postUser;
    if (value != null) {
      result
        ..add('postUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  PedidoOracaoRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PedidoOracaoRecordBuilder();

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
        case 'pedido':
          result.pedido = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'postOwner':
          result.postOwner = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'numComments':
          result.numComments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'likes':
          result.likes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'postUser':
          result.postUser = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$PedidoOracaoRecord extends PedidoOracaoRecord {
  @override
  final String titulo;
  @override
  final String pedido;
  @override
  final DateTime data;
  @override
  final int postOwner;
  @override
  final int numComments;
  @override
  final BuiltList<DocumentReference<Object>> likes;
  @override
  final DocumentReference<Object> postUser;
  @override
  final DocumentReference<Object> reference;

  factory _$PedidoOracaoRecord(
          [void Function(PedidoOracaoRecordBuilder) updates]) =>
      (new PedidoOracaoRecordBuilder()..update(updates)).build();

  _$PedidoOracaoRecord._(
      {this.titulo,
      this.pedido,
      this.data,
      this.postOwner,
      this.numComments,
      this.likes,
      this.postUser,
      this.reference})
      : super._();

  @override
  PedidoOracaoRecord rebuild(
          void Function(PedidoOracaoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PedidoOracaoRecordBuilder toBuilder() =>
      new PedidoOracaoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PedidoOracaoRecord &&
        titulo == other.titulo &&
        pedido == other.pedido &&
        data == other.data &&
        postOwner == other.postOwner &&
        numComments == other.numComments &&
        likes == other.likes &&
        postUser == other.postUser &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, titulo.hashCode), pedido.hashCode),
                            data.hashCode),
                        postOwner.hashCode),
                    numComments.hashCode),
                likes.hashCode),
            postUser.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PedidoOracaoRecord')
          ..add('titulo', titulo)
          ..add('pedido', pedido)
          ..add('data', data)
          ..add('postOwner', postOwner)
          ..add('numComments', numComments)
          ..add('likes', likes)
          ..add('postUser', postUser)
          ..add('reference', reference))
        .toString();
  }
}

class PedidoOracaoRecordBuilder
    implements Builder<PedidoOracaoRecord, PedidoOracaoRecordBuilder> {
  _$PedidoOracaoRecord _$v;

  String _titulo;
  String get titulo => _$this._titulo;
  set titulo(String titulo) => _$this._titulo = titulo;

  String _pedido;
  String get pedido => _$this._pedido;
  set pedido(String pedido) => _$this._pedido = pedido;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  int _postOwner;
  int get postOwner => _$this._postOwner;
  set postOwner(int postOwner) => _$this._postOwner = postOwner;

  int _numComments;
  int get numComments => _$this._numComments;
  set numComments(int numComments) => _$this._numComments = numComments;

  ListBuilder<DocumentReference<Object>> _likes;
  ListBuilder<DocumentReference<Object>> get likes =>
      _$this._likes ??= new ListBuilder<DocumentReference<Object>>();
  set likes(ListBuilder<DocumentReference<Object>> likes) =>
      _$this._likes = likes;

  DocumentReference<Object> _postUser;
  DocumentReference<Object> get postUser => _$this._postUser;
  set postUser(DocumentReference<Object> postUser) =>
      _$this._postUser = postUser;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PedidoOracaoRecordBuilder() {
    PedidoOracaoRecord._initializeBuilder(this);
  }

  PedidoOracaoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _titulo = $v.titulo;
      _pedido = $v.pedido;
      _data = $v.data;
      _postOwner = $v.postOwner;
      _numComments = $v.numComments;
      _likes = $v.likes?.toBuilder();
      _postUser = $v.postUser;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PedidoOracaoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PedidoOracaoRecord;
  }

  @override
  void update(void Function(PedidoOracaoRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PedidoOracaoRecord build() {
    _$PedidoOracaoRecord _$result;
    try {
      _$result = _$v ??
          new _$PedidoOracaoRecord._(
              titulo: titulo,
              pedido: pedido,
              data: data,
              postOwner: postOwner,
              numComments: numComments,
              likes: _likes?.build(),
              postUser: postUser,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'likes';
        _likes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PedidoOracaoRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
