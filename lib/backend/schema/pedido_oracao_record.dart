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
  DocumentReference get nome;

  @nullable
  String get titulo;

  @nullable
  String get pedido;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PedidoOracaoRecordBuilder builder) => builder
    ..titulo = ''
    ..pedido = '';

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
  DocumentReference nome,
  String titulo,
  String pedido,
}) =>
    serializers.toFirestore(
        PedidoOracaoRecord.serializer,
        PedidoOracaoRecord((p) => p
          ..nome = nome
          ..titulo = titulo
          ..pedido = pedido));
