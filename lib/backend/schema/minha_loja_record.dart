import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MinhaLojaRecord extends FirestoreRecord {
  MinhaLojaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeLoja" field.
  String? _nomeLoja;
  String get nomeLoja => _nomeLoja ?? '';
  bool hasNomeLoja() => _nomeLoja != null;

  // "logoLoja" field.
  String? _logoLoja;
  String get logoLoja => _logoLoja ?? '';
  bool hasLogoLoja() => _logoLoja != null;

  // "dataCriacao" field.
  DateTime? _dataCriacao;
  DateTime? get dataCriacao => _dataCriacao;
  bool hasDataCriacao() => _dataCriacao != null;

  // "urlLoja" field.
  String? _urlLoja;
  String get urlLoja => _urlLoja ?? '';
  bool hasUrlLoja() => _urlLoja != null;

  // "cnpjLoja" field.
  String? _cnpjLoja;
  String get cnpjLoja => _cnpjLoja ?? '';
  bool hasCnpjLoja() => _cnpjLoja != null;

  // "descricaoLoja" field.
  String? _descricaoLoja;
  String get descricaoLoja => _descricaoLoja ?? '';
  bool hasDescricaoLoja() => _descricaoLoja != null;

  // "endRua" field.
  String? _endRua;
  String get endRua => _endRua ?? '';
  bool hasEndRua() => _endRua != null;

  // "endBairro" field.
  String? _endBairro;
  String get endBairro => _endBairro ?? '';
  bool hasEndBairro() => _endBairro != null;

  // "endCidade" field.
  String? _endCidade;
  String get endCidade => _endCidade ?? '';
  bool hasEndCidade() => _endCidade != null;

  // "endEstado" field.
  String? _endEstado;
  String get endEstado => _endEstado ?? '';
  bool hasEndEstado() => _endEstado != null;

  // "endNumero" field.
  String? _endNumero;
  String get endNumero => _endNumero ?? '';
  bool hasEndNumero() => _endNumero != null;

  // "telefoneLoja" field.
  String? _telefoneLoja;
  String get telefoneLoja => _telefoneLoja ?? '';
  bool hasTelefoneLoja() => _telefoneLoja != null;

  // "instagramLoja" field.
  String? _instagramLoja;
  String get instagramLoja => _instagramLoja ?? '';
  bool hasInstagramLoja() => _instagramLoja != null;

  // "emailLoja" field.
  String? _emailLoja;
  String get emailLoja => _emailLoja ?? '';
  bool hasEmailLoja() => _emailLoja != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _nomeLoja = snapshotData['nomeLoja'] as String?;
    _logoLoja = snapshotData['logoLoja'] as String?;
    _dataCriacao = snapshotData['dataCriacao'] as DateTime?;
    _urlLoja = snapshotData['urlLoja'] as String?;
    _cnpjLoja = snapshotData['cnpjLoja'] as String?;
    _descricaoLoja = snapshotData['descricaoLoja'] as String?;
    _endRua = snapshotData['endRua'] as String?;
    _endBairro = snapshotData['endBairro'] as String?;
    _endCidade = snapshotData['endCidade'] as String?;
    _endEstado = snapshotData['endEstado'] as String?;
    _endNumero = snapshotData['endNumero'] as String?;
    _telefoneLoja = snapshotData['telefoneLoja'] as String?;
    _instagramLoja = snapshotData['instagramLoja'] as String?;
    _emailLoja = snapshotData['emailLoja'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('minhaLoja');

  static Stream<MinhaLojaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MinhaLojaRecord.fromSnapshot(s));

  static Future<MinhaLojaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MinhaLojaRecord.fromSnapshot(s));

  static MinhaLojaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MinhaLojaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MinhaLojaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MinhaLojaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MinhaLojaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MinhaLojaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMinhaLojaRecordData({
  String? nomeLoja,
  String? logoLoja,
  DateTime? dataCriacao,
  String? urlLoja,
  String? cnpjLoja,
  String? descricaoLoja,
  String? endRua,
  String? endBairro,
  String? endCidade,
  String? endEstado,
  String? endNumero,
  String? telefoneLoja,
  String? instagramLoja,
  String? emailLoja,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeLoja': nomeLoja,
      'logoLoja': logoLoja,
      'dataCriacao': dataCriacao,
      'urlLoja': urlLoja,
      'cnpjLoja': cnpjLoja,
      'descricaoLoja': descricaoLoja,
      'endRua': endRua,
      'endBairro': endBairro,
      'endCidade': endCidade,
      'endEstado': endEstado,
      'endNumero': endNumero,
      'telefoneLoja': telefoneLoja,
      'instagramLoja': instagramLoja,
      'emailLoja': emailLoja,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class MinhaLojaRecordDocumentEquality implements Equality<MinhaLojaRecord> {
  const MinhaLojaRecordDocumentEquality();

  @override
  bool equals(MinhaLojaRecord? e1, MinhaLojaRecord? e2) {
    return e1?.nomeLoja == e2?.nomeLoja &&
        e1?.logoLoja == e2?.logoLoja &&
        e1?.dataCriacao == e2?.dataCriacao &&
        e1?.urlLoja == e2?.urlLoja &&
        e1?.cnpjLoja == e2?.cnpjLoja &&
        e1?.descricaoLoja == e2?.descricaoLoja &&
        e1?.endRua == e2?.endRua &&
        e1?.endBairro == e2?.endBairro &&
        e1?.endCidade == e2?.endCidade &&
        e1?.endEstado == e2?.endEstado &&
        e1?.endNumero == e2?.endNumero &&
        e1?.telefoneLoja == e2?.telefoneLoja &&
        e1?.instagramLoja == e2?.instagramLoja &&
        e1?.emailLoja == e2?.emailLoja &&
        e1?.user == e2?.user;
  }

  @override
  int hash(MinhaLojaRecord? e) => const ListEquality().hash([
        e?.nomeLoja,
        e?.logoLoja,
        e?.dataCriacao,
        e?.urlLoja,
        e?.cnpjLoja,
        e?.descricaoLoja,
        e?.endRua,
        e?.endBairro,
        e?.endCidade,
        e?.endEstado,
        e?.endNumero,
        e?.telefoneLoja,
        e?.instagramLoja,
        e?.emailLoja,
        e?.user
      ]);

  @override
  bool isValidKey(Object? o) => o is MinhaLojaRecord;
}
