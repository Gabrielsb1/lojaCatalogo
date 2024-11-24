import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutoRecord extends FirestoreRecord {
  ProdutoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeProduto" field.
  String? _nomeProduto;
  String get nomeProduto => _nomeProduto ?? '';
  bool hasNomeProduto() => _nomeProduto != null;

  // "descricaoProduto" field.
  String? _descricaoProduto;
  String get descricaoProduto => _descricaoProduto ?? '';
  bool hasDescricaoProduto() => _descricaoProduto != null;

  // "created_At" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "valorVenda" field.
  double? _valorVenda;
  double get valorVenda => _valorVenda ?? 0.0;
  bool hasValorVenda() => _valorVenda != null;

  // "valorPromocional" field.
  double? _valorPromocional;
  double get valorPromocional => _valorPromocional ?? 0.0;
  bool hasValorPromocional() => _valorPromocional != null;

  // "valorCusto" field.
  double? _valorCusto;
  double get valorCusto => _valorCusto ?? 0.0;
  bool hasValorCusto() => _valorCusto != null;

  // "codProduto" field.
  String? _codProduto;
  String get codProduto => _codProduto ?? '';
  bool hasCodProduto() => _codProduto != null;

  // "categoria" field.
  DocumentReference? _categoria;
  DocumentReference? get categoria => _categoria;
  bool hasCategoria() => _categoria != null;

  // "imgProduto" field.
  List<String>? _imgProduto;
  List<String> get imgProduto => _imgProduto ?? const [];
  bool hasImgProduto() => _imgProduto != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  bool hasAtivo() => _ativo != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nomeProduto = snapshotData['nomeProduto'] as String?;
    _descricaoProduto = snapshotData['descricaoProduto'] as String?;
    _createdAt = snapshotData['created_At'] as DateTime?;
    _valorVenda = castToType<double>(snapshotData['valorVenda']);
    _valorPromocional = castToType<double>(snapshotData['valorPromocional']);
    _valorCusto = castToType<double>(snapshotData['valorCusto']);
    _codProduto = snapshotData['codProduto'] as String?;
    _categoria = snapshotData['categoria'] as DocumentReference?;
    _imgProduto = getDataList(snapshotData['imgProduto']);
    _ativo = snapshotData['ativo'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('produto')
          : FirebaseFirestore.instance.collectionGroup('produto');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('produto').doc(id);

  static Stream<ProdutoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutoRecord.fromSnapshot(s));

  static Future<ProdutoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutoRecord.fromSnapshot(s));

  static ProdutoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutoRecordData({
  String? nomeProduto,
  String? descricaoProduto,
  DateTime? createdAt,
  double? valorVenda,
  double? valorPromocional,
  double? valorCusto,
  String? codProduto,
  DocumentReference? categoria,
  bool? ativo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeProduto': nomeProduto,
      'descricaoProduto': descricaoProduto,
      'created_At': createdAt,
      'valorVenda': valorVenda,
      'valorPromocional': valorPromocional,
      'valorCusto': valorCusto,
      'codProduto': codProduto,
      'categoria': categoria,
      'ativo': ativo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutoRecordDocumentEquality implements Equality<ProdutoRecord> {
  const ProdutoRecordDocumentEquality();

  @override
  bool equals(ProdutoRecord? e1, ProdutoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nomeProduto == e2?.nomeProduto &&
        e1?.descricaoProduto == e2?.descricaoProduto &&
        e1?.createdAt == e2?.createdAt &&
        e1?.valorVenda == e2?.valorVenda &&
        e1?.valorPromocional == e2?.valorPromocional &&
        e1?.valorCusto == e2?.valorCusto &&
        e1?.codProduto == e2?.codProduto &&
        e1?.categoria == e2?.categoria &&
        listEquality.equals(e1?.imgProduto, e2?.imgProduto) &&
        e1?.ativo == e2?.ativo;
  }

  @override
  int hash(ProdutoRecord? e) => const ListEquality().hash([
        e?.nomeProduto,
        e?.descricaoProduto,
        e?.createdAt,
        e?.valorVenda,
        e?.valorPromocional,
        e?.valorCusto,
        e?.codProduto,
        e?.categoria,
        e?.imgProduto,
        e?.ativo
      ]);

  @override
  bool isValidKey(Object? o) => o is ProdutoRecord;
}
