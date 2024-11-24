import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  DocumentReference? _categoriaSelecionada;
  DocumentReference? get categoriaSelecionada => _categoriaSelecionada;
  set categoriaSelecionada(DocumentReference? value) {
    _categoriaSelecionada = value;
  }

  bool _ordemCrescente = false;
  bool get ordemCrescente => _ordemCrescente;
  set ordemCrescente(bool value) {
    _ordemCrescente = value;
  }

  List<String> _listaImgProdutoCarrossel = [];
  List<String> get listaImgProdutoCarrossel => _listaImgProdutoCarrossel;
  set listaImgProdutoCarrossel(List<String> value) {
    _listaImgProdutoCarrossel = value;
  }

  void addToListaImgProdutoCarrossel(String value) {
    listaImgProdutoCarrossel.add(value);
  }

  void removeFromListaImgProdutoCarrossel(String value) {
    listaImgProdutoCarrossel.remove(value);
  }

  void removeAtIndexFromListaImgProdutoCarrossel(int index) {
    listaImgProdutoCarrossel.removeAt(index);
  }

  void updateListaImgProdutoCarrosselAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listaImgProdutoCarrossel[index] =
        updateFn(_listaImgProdutoCarrossel[index]);
  }

  void insertAtIndexInListaImgProdutoCarrossel(int index, String value) {
    listaImgProdutoCarrossel.insert(index, value);
  }

  String _imgProdutoSelecionada = '';
  String get imgProdutoSelecionada => _imgProdutoSelecionada;
  set imgProdutoSelecionada(String value) {
    _imgProdutoSelecionada = value;
  }

  List<String> _imgProduto = [];
  List<String> get imgProduto => _imgProduto;
  set imgProduto(List<String> value) {
    _imgProduto = value;
  }

  void addToImgProduto(String value) {
    imgProduto.add(value);
  }

  void removeFromImgProduto(String value) {
    imgProduto.remove(value);
  }

  void removeAtIndexFromImgProduto(int index) {
    imgProduto.removeAt(index);
  }

  void updateImgProdutoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    imgProduto[index] = updateFn(_imgProduto[index]);
  }

  void insertAtIndexInImgProduto(int index, String value) {
    imgProduto.insert(index, value);
  }
}
