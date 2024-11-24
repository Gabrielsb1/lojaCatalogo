import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/header_catalogo/header_catalogo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'detalhes_produto_catalogo_widget.dart'
    show DetalhesProdutoCatalogoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetalhesProdutoCatalogoModel
    extends FlutterFlowModel<DetalhesProdutoCatalogoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for headerCatalogo component.
  late HeaderCatalogoModel headerCatalogoModel;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CarrinhoRecord? pesquisaCarrinho;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  ProdutoCarrinhoRecord? produtoExiste;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProdutoCarrinhoRecord? novoProdutoCarrinhoExist;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CarrinhoRecord? novoCarrinho;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ProdutoCarrinhoRecord? novoProdutoCarrinhoAdc;

  @override
  void initState(BuildContext context) {
    headerCatalogoModel = createModel(context, () => HeaderCatalogoModel());
  }

  @override
  void dispose() {
    headerCatalogoModel.dispose();
  }
}
