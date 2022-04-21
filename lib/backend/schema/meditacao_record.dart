import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'meditacao_record.g.dart';

abstract class MeditacaoRecord
    implements Built<MeditacaoRecord, MeditacaoRecordBuilder> {
  static Serializer<MeditacaoRecord> get serializer =>
      _$meditacaoRecordSerializer;

  @nullable
  String get titulo;

  @nullable
  String get texto;

  @nullable
  DateTime get data;

  @nullable
  String get img;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MeditacaoRecordBuilder builder) => builder
    ..titulo = ''
    ..texto = ''
    ..img = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meditacao');

  static Stream<MeditacaoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MeditacaoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MeditacaoRecord._();
  factory MeditacaoRecord([void Function(MeditacaoRecordBuilder) updates]) =
      _$MeditacaoRecord;

  static MeditacaoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMeditacaoRecordData({
  String titulo,
  String texto,
  DateTime data,
  String img,
}) =>
    serializers.toFirestore(
        MeditacaoRecord.serializer,
        MeditacaoRecord((m) => m
          ..titulo = titulo
          ..texto = texto
          ..data = data
          ..img = img));
