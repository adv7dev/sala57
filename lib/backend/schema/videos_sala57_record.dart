import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'videos_sala57_record.g.dart';

abstract class VideosSala57Record
    implements Built<VideosSala57Record, VideosSala57RecordBuilder> {
  static Serializer<VideosSala57Record> get serializer =>
      _$videosSala57RecordSerializer;

  @nullable
  String get nome;

  @nullable
  String get video;

  @nullable
  DateTime get data;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(VideosSala57RecordBuilder builder) => builder
    ..nome = ''
    ..video = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videos_sala57');

  static Stream<VideosSala57Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<VideosSala57Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  VideosSala57Record._();
  factory VideosSala57Record(
          [void Function(VideosSala57RecordBuilder) updates]) =
      _$VideosSala57Record;

  static VideosSala57Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createVideosSala57RecordData({
  String nome,
  String video,
  DateTime data,
}) =>
    serializers.toFirestore(
        VideosSala57Record.serializer,
        VideosSala57Record((v) => v
          ..nome = nome
          ..video = video
          ..data = data));
