import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidoRecord extends FirestoreRecord {
  PedidoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "loja" field.
  DocumentReference? _loja;
  DocumentReference? get loja => _loja;
  bool hasLoja() => _loja != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "valorTotal" field.
  double? _valorTotal;
  double get valorTotal => _valorTotal ?? 0.0;
  bool hasValorTotal() => _valorTotal != null;

  // "statusPedido" field.
  String? _statusPedido;
  String get statusPedido => _statusPedido ?? '';
  bool hasStatusPedido() => _statusPedido != null;

  void _initializeFields() {
    _loja = snapshotData['loja'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
    _valorTotal = castToType<double>(snapshotData['valorTotal']);
    _statusPedido = snapshotData['statusPedido'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedido');

  static Stream<PedidoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidoRecord.fromSnapshot(s));

  static Future<PedidoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidoRecord.fromSnapshot(s));

  static PedidoRecord fromSnapshot(DocumentSnapshot snapshot) => PedidoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidoRecordData({
  DocumentReference? loja,
  DocumentReference? user,
  double? valorTotal,
  String? statusPedido,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'loja': loja,
      'user': user,
      'valorTotal': valorTotal,
      'statusPedido': statusPedido,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidoRecordDocumentEquality implements Equality<PedidoRecord> {
  const PedidoRecordDocumentEquality();

  @override
  bool equals(PedidoRecord? e1, PedidoRecord? e2) {
    return e1?.loja == e2?.loja &&
        e1?.user == e2?.user &&
        e1?.valorTotal == e2?.valorTotal &&
        e1?.statusPedido == e2?.statusPedido;
  }

  @override
  int hash(PedidoRecord? e) => const ListEquality()
      .hash([e?.loja, e?.user, e?.valorTotal, e?.statusPedido]);

  @override
  bool isValidKey(Object? o) => o is PedidoRecord;
}
