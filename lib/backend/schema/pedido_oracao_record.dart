import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pedido_oracao_record.g.dart';

abstract class PedidoOracaoRecord
    implements Built<PedidoOracaoRecord, PedidoOracaoRecordBuilder> {
  static Serializer<PedidoOracaoRecord> get serializer =>
      _$pedidoOracaoRecordSerializer;

  @nullable
  String get titulo;

  @nullable
  String get pedido;

  @nullable
  DateTime get data;

  @nullable
  int get postOwner;

  @nullable
  int get numComments;

  @nullable
  BuiltList<DocumentReference> get likes;

  @nullable
  DocumentReference get postUser;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PedidoOracaoRecordBuilder builder) => builder
    ..titulo = ''
    ..pedido = ''
    ..postOwner = 0
    ..numComments = 0
    ..likes = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedido_oracao');

  static Stream<PedidoOracaoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PedidoOracaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  PedidoOracaoRecord._();
  factory PedidoOracaoRecord(
          [void Function(PedidoOracaoRecordBuilder) updates]) =
      _$PedidoOracaoRecord;

  static PedidoOracaoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPedidoOracaoRecordData({
  String titulo,
  String pedido,
  DateTime data,
  int postOwner,
  int numComments,
  DocumentReference postUser,
}) =>
    serializers.toFirestore(
        PedidoOracaoRecord.serializer,
        PedidoOracaoRecord((p) => p
          ..titulo = titulo
          ..pedido = pedido
          ..data = data
          ..postOwner = postOwner
          ..numComments = numComments
          ..likes = null
          ..postUser = postUser));
