import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteRecord extends FirestoreRecord {
  ClienteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeCliente" field.
  String? _nomeCliente;
  String get nomeCliente => _nomeCliente ?? '';
  bool hasNomeCliente() => _nomeCliente != null;

  // "emailCliente" field.
  String? _emailCliente;
  String get emailCliente => _emailCliente ?? '';
  bool hasEmailCliente() => _emailCliente != null;

  // "clienteID" field.
  String? _clienteID;
  String get clienteID => _clienteID ?? '';
  bool hasClienteID() => _clienteID != null;

  // "created_At" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "cpf_cnpj" field.
  String? _cpfCnpj;
  String get cpfCnpj => _cpfCnpj ?? '';
  bool hasCpfCnpj() => _cpfCnpj != null;

  // "observacaoCliente" field.
  String? _observacaoCliente;
  String get observacaoCliente => _observacaoCliente ?? '';
  bool hasObservacaoCliente() => _observacaoCliente != null;

  // "telefoneCliente" field.
  String? _telefoneCliente;
  String get telefoneCliente => _telefoneCliente ?? '';
  bool hasTelefoneCliente() => _telefoneCliente != null;

  // "fotoCliente" field.
  String? _fotoCliente;
  String get fotoCliente => _fotoCliente ?? '';
  bool hasFotoCliente() => _fotoCliente != null;

  // "ruaEndCliente" field.
  String? _ruaEndCliente;
  String get ruaEndCliente => _ruaEndCliente ?? '';
  bool hasRuaEndCliente() => _ruaEndCliente != null;

  // "bairroEndCliente" field.
  String? _bairroEndCliente;
  String get bairroEndCliente => _bairroEndCliente ?? '';
  bool hasBairroEndCliente() => _bairroEndCliente != null;

  // "numEndCliente" field.
  String? _numEndCliente;
  String get numEndCliente => _numEndCliente ?? '';
  bool hasNumEndCliente() => _numEndCliente != null;

  // "cidadeEndCliente" field.
  String? _cidadeEndCliente;
  String get cidadeEndCliente => _cidadeEndCliente ?? '';
  bool hasCidadeEndCliente() => _cidadeEndCliente != null;

  // "ufEndCliente" field.
  String? _ufEndCliente;
  String get ufEndCliente => _ufEndCliente ?? '';
  bool hasUfEndCliente() => _ufEndCliente != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomeCliente = snapshotData['nomeCliente'] as String?;
    _emailCliente = snapshotData['emailCliente'] as String?;
    _clienteID = snapshotData['clienteID'] as String?;
    _createdAt = snapshotData['created_At'] as DateTime?;
    _cpfCnpj = snapshotData['cpf_cnpj'] as String?;
    _observacaoCliente = snapshotData['observacaoCliente'] as String?;
    _telefoneCliente = snapshotData['telefoneCliente'] as String?;
    _fotoCliente = snapshotData['fotoCliente'] as String?;
    _ruaEndCliente = snapshotData['ruaEndCliente'] as String?;
    _bairroEndCliente = snapshotData['bairroEndCliente'] as String?;
    _numEndCliente = snapshotData['numEndCliente'] as String?;
    _cidadeEndCliente = snapshotData['cidadeEndCliente'] as String?;
    _ufEndCliente = snapshotData['ufEndCliente'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('cliente')
          : FirebaseFirestore.instance.collectionGroup('cliente');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('cliente').doc(id);

  static Stream<ClienteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClienteRecord.fromSnapshot(s));

  static Future<ClienteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClienteRecord.fromSnapshot(s));

  static ClienteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClienteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClienteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClienteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClienteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClienteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClienteRecordData({
  String? nomeCliente,
  String? emailCliente,
  String? clienteID,
  DateTime? createdAt,
  String? cpfCnpj,
  String? observacaoCliente,
  String? telefoneCliente,
  String? fotoCliente,
  String? ruaEndCliente,
  String? bairroEndCliente,
  String? numEndCliente,
  String? cidadeEndCliente,
  String? ufEndCliente,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeCliente': nomeCliente,
      'emailCliente': emailCliente,
      'clienteID': clienteID,
      'created_At': createdAt,
      'cpf_cnpj': cpfCnpj,
      'observacaoCliente': observacaoCliente,
      'telefoneCliente': telefoneCliente,
      'fotoCliente': fotoCliente,
      'ruaEndCliente': ruaEndCliente,
      'bairroEndCliente': bairroEndCliente,
      'numEndCliente': numEndCliente,
      'cidadeEndCliente': cidadeEndCliente,
      'ufEndCliente': ufEndCliente,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClienteRecordDocumentEquality implements Equality<ClienteRecord> {
  const ClienteRecordDocumentEquality();

  @override
  bool equals(ClienteRecord? e1, ClienteRecord? e2) {
    return e1?.nomeCliente == e2?.nomeCliente &&
        e1?.emailCliente == e2?.emailCliente &&
        e1?.clienteID == e2?.clienteID &&
        e1?.createdAt == e2?.createdAt &&
        e1?.cpfCnpj == e2?.cpfCnpj &&
        e1?.observacaoCliente == e2?.observacaoCliente &&
        e1?.telefoneCliente == e2?.telefoneCliente &&
        e1?.fotoCliente == e2?.fotoCliente &&
        e1?.ruaEndCliente == e2?.ruaEndCliente &&
        e1?.bairroEndCliente == e2?.bairroEndCliente &&
        e1?.numEndCliente == e2?.numEndCliente &&
        e1?.cidadeEndCliente == e2?.cidadeEndCliente &&
        e1?.ufEndCliente == e2?.ufEndCliente;
  }

  @override
  int hash(ClienteRecord? e) => const ListEquality().hash([
        e?.nomeCliente,
        e?.emailCliente,
        e?.clienteID,
        e?.createdAt,
        e?.cpfCnpj,
        e?.observacaoCliente,
        e?.telefoneCliente,
        e?.fotoCliente,
        e?.ruaEndCliente,
        e?.bairroEndCliente,
        e?.numEndCliente,
        e?.cidadeEndCliente,
        e?.ufEndCliente
      ]);

  @override
  bool isValidKey(Object? o) => o is ClienteRecord;
}
