// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_sala57_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideosSala57Record> _$videosSala57RecordSerializer =
    new _$VideosSala57RecordSerializer();

class _$VideosSala57RecordSerializer
    implements StructuredSerializer<VideosSala57Record> {
  @override
  final Iterable<Type> types = const [VideosSala57Record, _$VideosSala57Record];
  @override
  final String wireName = 'VideosSala57Record';

  @override
  Iterable<Object> serialize(Serializers serializers, VideosSala57Record object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
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
  VideosSala57Record deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideosSala57RecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$VideosSala57Record extends VideosSala57Record {
  @override
  final String nome;
  @override
  final String video;
  @override
  final DateTime data;
  @override
  final DocumentReference<Object> reference;

  factory _$VideosSala57Record(
          [void Function(VideosSala57RecordBuilder) updates]) =>
      (new VideosSala57RecordBuilder()..update(updates)).build();

  _$VideosSala57Record._({this.nome, this.video, this.data, this.reference})
      : super._();

  @override
  VideosSala57Record rebuild(
          void Function(VideosSala57RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideosSala57RecordBuilder toBuilder() =>
      new VideosSala57RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideosSala57Record &&
        nome == other.nome &&
        video == other.video &&
        data == other.data &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, nome.hashCode), video.hashCode), data.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VideosSala57Record')
          ..add('nome', nome)
          ..add('video', video)
          ..add('data', data)
          ..add('reference', reference))
        .toString();
  }
}

class VideosSala57RecordBuilder
    implements Builder<VideosSala57Record, VideosSala57RecordBuilder> {
  _$VideosSala57Record _$v;

  String _nome;
  String get nome => _$this._nome;
  set nome(String nome) => _$this._nome = nome;

  String _video;
  String get video => _$this._video;
  set video(String video) => _$this._video = video;

  DateTime _data;
  DateTime get data => _$this._data;
  set data(DateTime data) => _$this._data = data;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  VideosSala57RecordBuilder() {
    VideosSala57Record._initializeBuilder(this);
  }

  VideosSala57RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _video = $v.video;
      _data = $v.data;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideosSala57Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideosSala57Record;
  }

  @override
  void update(void Function(VideosSala57RecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VideosSala57Record build() {
    final _$result = _$v ??
        new _$VideosSala57Record._(
            nome: nome, video: video, data: data, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
