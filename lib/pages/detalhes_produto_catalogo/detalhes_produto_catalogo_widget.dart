import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/header_catalogo/header_catalogo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'detalhes_produto_catalogo_model.dart';
export 'detalhes_produto_catalogo_model.dart';

class DetalhesProdutoCatalogoWidget extends StatefulWidget {
  const DetalhesProdutoCatalogoWidget({
    super.key,
    required this.detalhesProduto,
  });

  final ProdutoRecord? detalhesProduto;

  @override
  State<DetalhesProdutoCatalogoWidget> createState() =>
      _DetalhesProdutoCatalogoWidgetState();
}

class _DetalhesProdutoCatalogoWidgetState
    extends State<DetalhesProdutoCatalogoWidget> with TickerProviderStateMixin {
  late DetalhesProdutoCatalogoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetalhesProdutoCatalogoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().listaImgProdutoCarrossel =
          widget!.detalhesProduto!.imgProduto.toList().cast<String>();
      FFAppState().imgProdutoSelecionada =
          widget!.detalhesProduto!.imgProduto.first;
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<MinhaLojaRecord>(
      stream:
          MinhaLojaRecord.getDocument(widget!.detalhesProduto!.parentReference),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }

        final detalhesProdutoCatalogoMinhaLojaRecord = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.headerCatalogoModel,
                    updateCallback: () => safeSetState(() {}),
                    child: HeaderCatalogoWidget(
                      parameter1:
                          detalhesProdutoCatalogoMinhaLojaRecord.logoLoja,
                      parameter2:
                          detalhesProdutoCatalogoMinhaLojaRecord.nomeLoja,
                      parameter3: detalhesProdutoCatalogoMinhaLojaRecord,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 24.0),
                            child: Wrap(
                              spacing: 0.0,
                              runSpacing: 0.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width >=
                                              768.0
                                          ? (MediaQuery.sizeOf(context).width *
                                              0.5)
                                          : MediaQuery.sizeOf(context).width,
                                      height: 400.0,
                                      constraints: BoxConstraints(
                                        maxWidth: 750.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Hero(
                                              tag: FFAppState()
                                                  .imgProdutoSelecionada,
                                              transitionOnUserGestures: true,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: Image.network(
                                                  FFAppState()
                                                      .imgProdutoSelecionada,
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 32.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Card(
                                                        clipBehavior: Clip
                                                            .antiAliasWithSaveLayer,
                                                        color:
                                                            Color(0x3A000000),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 30.0,
                                                          buttonSize: 46.0,
                                                          icon: Icon(
                                                            Icons
                                                                .arrow_back_rounded,
                                                            color: Colors.white,
                                                            size: 25.0,
                                                          ),
                                                          onPressed: () async {
                                                            context.pop();
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Builder(
                                        builder: (context) {
                                          final listaImgProduto = widget!
                                                  .detalhesProduto?.imgProduto
                                                  ?.toList() ??
                                              [];

                                          return Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: List.generate(
                                                listaImgProduto.length,
                                                (listaImgProdutoIndex) {
                                              final listaImgProdutoItem =
                                                  listaImgProduto[
                                                      listaImgProdutoIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 16.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    FFAppState()
                                                            .imgProdutoSelecionada =
                                                        listaImgProdutoItem;
                                                    safeSetState(() {});
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      listaImgProdutoItem,
                                                      width: 120.0,
                                                      height: 120.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width >=
                                          768.0
                                      ? (MediaQuery.sizeOf(context).width * 0.5)
                                      : MediaQuery.sizeOf(context).width,
                                  constraints: BoxConstraints(
                                    maxWidth: 750.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 32.0),
                                    child: StreamBuilder<CategoriaRecord>(
                                      stream: CategoriaRecord.getDocument(
                                          widget!.detalhesProduto!.categoria!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }

                                        final columnCategoriaRecord =
                                            snapshot.data!;

                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 20.0, 24.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        widget!.detalhesProduto
                                                            ?.nomeProduto,
                                                        'null',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineMedium
                                                          .override(
                                                            fontFamily:
                                                                'Inter Tight',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      formatNumber(
                                                        widget!.detalhesProduto!
                                                            .valorVenda,
                                                        formatType:
                                                            FormatType.decimal,
                                                        decimalType: DecimalType
                                                            .commaDecimal,
                                                        currency: 'R\$ ',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter Tight',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 4.0, 24.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    columnCategoriaRecord
                                                        .nomeCategoria,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 16.0, 24.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Descrição',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 4.0, 24.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'With a down-to-earth persona and abilities that are out of this world, Zion is unlike anybody else. On court, the gentle spirit who\'s all about family transforms into an unmatched force of unstoppable athleticism and speed.With a down-to-earth persona and abilities that are out of this world, Zion is unlike anybody else. On court, the gentle spirit who\'s all about family transforms into an unmatched force of unstoppable athleticism and speed.With a down-to-earth persona and abilities that are out of this world, Zion is unlike anybody else. On court, the gentle spirit who\'s all about family transforms into an unmatched force of unstoppable athleticism and speed.',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              phone: false,
                                              tablet: false,
                                            ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 42.0, 16.0, 42.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Flexible(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () {
                                                            print(
                                                                'Button pressed ...');
                                                          },
                                                          text:
                                                              'Pedir por Whatsapp',
                                                          icon: FaIcon(
                                                            FontAwesomeIcons
                                                                .whatsapp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            size: 20.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            height: 50.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: Color(
                                                                0xFF42C452),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF42C452),
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            _model.pesquisaCarrinho =
                                                                await queryCarrinhoRecordOnce(
                                                              queryBuilder:
                                                                  (carrinhoRecord) =>
                                                                      carrinhoRecord
                                                                          .where(
                                                                            'userComprador',
                                                                            isEqualTo:
                                                                                currentUserReference,
                                                                          )
                                                                          .where(
                                                                            'loja',
                                                                            isEqualTo:
                                                                                detalhesProdutoCatalogoMinhaLojaRecord.reference,
                                                                          ),
                                                              singleRecord:
                                                                  true,
                                                            ).then((s) => s
                                                                    .firstOrNull);
                                                            if (_model
                                                                    .pesquisaCarrinho !=
                                                                null) {
                                                              _model.produtoExiste =
                                                                  await queryProdutoCarrinhoRecordOnce(
                                                                parent: _model
                                                                    .pesquisaCarrinho
                                                                    ?.reference,
                                                                queryBuilder:
                                                                    (produtoCarrinhoRecord) =>
                                                                        produtoCarrinhoRecord
                                                                            .where(
                                                                  'produto',
                                                                  isEqualTo: widget!
                                                                      .detalhesProduto
                                                                      ?.reference,
                                                                ),
                                                                singleRecord:
                                                                    true,
                                                              ).then((s) => s
                                                                      .firstOrNull);
                                                              if (_model
                                                                      .produtoExiste !=
                                                                  null) {
                                                                await _model
                                                                    .produtoExiste!
                                                                    .reference
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'quantidade':
                                                                          FieldValue.increment(
                                                                              1),
                                                                      'subtotal': FieldValue.increment(_model
                                                                          .produtoExiste!
                                                                          .valorUnit),
                                                                    },
                                                                  ),
                                                                });

                                                                await _model
                                                                    .pesquisaCarrinho!
                                                                    .reference
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'total': FieldValue.increment(_model
                                                                          .produtoExiste!
                                                                          .valorUnit),
                                                                    },
                                                                  ),
                                                                });
                                                              } else {
                                                                var produtoCarrinhoRecordReference1 =
                                                                    ProdutoCarrinhoRecord.createDoc(_model
                                                                        .pesquisaCarrinho!
                                                                        .reference);
                                                                await produtoCarrinhoRecordReference1
                                                                    .set(
                                                                        createProdutoCarrinhoRecordData(
                                                                  produto: widget!
                                                                      .detalhesProduto
                                                                      ?.reference,
                                                                  valorUnit: widget!
                                                                              .detalhesProduto!
                                                                              .valorPromocional >
                                                                          0.0
                                                                      ? widget!
                                                                          .detalhesProduto
                                                                          ?.valorPromocional
                                                                      : widget!
                                                                          .detalhesProduto
                                                                          ?.valorVenda,
                                                                  quantidade: 1,
                                                                  subtotal: widget!
                                                                              .detalhesProduto!
                                                                              .valorPromocional >
                                                                          0.0
                                                                      ? widget!
                                                                          .detalhesProduto
                                                                          ?.valorPromocional
                                                                      : widget!
                                                                          .detalhesProduto
                                                                          ?.valorVenda,
                                                                ));
                                                                _model.novoProdutoCarrinhoExist =
                                                                    ProdutoCarrinhoRecord
                                                                        .getDocumentFromData(
                                                                            createProdutoCarrinhoRecordData(
                                                                              produto: widget!.detalhesProduto?.reference,
                                                                              valorUnit: widget!.detalhesProduto!.valorPromocional > 0.0 ? widget!.detalhesProduto?.valorPromocional : widget!.detalhesProduto?.valorVenda,
                                                                              quantidade: 1,
                                                                              subtotal: widget!.detalhesProduto!.valorPromocional > 0.0 ? widget!.detalhesProduto?.valorPromocional : widget!.detalhesProduto?.valorVenda,
                                                                            ),
                                                                            produtoCarrinhoRecordReference1);

                                                                await _model
                                                                    .pesquisaCarrinho!
                                                                    .reference
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'total': FieldValue.increment(_model
                                                                          .novoProdutoCarrinhoExist!
                                                                          .valorUnit),
                                                                    },
                                                                  ),
                                                                });
                                                              }

                                                              context.pushNamed(
                                                                'Checkout',
                                                                queryParameters:
                                                                    {
                                                                  'loja':
                                                                      serializeParam(
                                                                    detalhesProdutoCatalogoMinhaLojaRecord,
                                                                    ParamType
                                                                        .Document,
                                                                  ),
                                                                }.withoutNulls,
                                                                extra: <String,
                                                                    dynamic>{
                                                                  'loja':
                                                                      detalhesProdutoCatalogoMinhaLojaRecord,
                                                                },
                                                              );
                                                            } else {
                                                              var carrinhoRecordReference =
                                                                  CarrinhoRecord
                                                                      .collection
                                                                      .doc();
                                                              await carrinhoRecordReference
                                                                  .set(
                                                                      createCarrinhoRecordData(
                                                                userComprador:
                                                                    currentUserReference,
                                                                loja: detalhesProdutoCatalogoMinhaLojaRecord
                                                                    .reference,
                                                              ));
                                                              _model.novoCarrinho =
                                                                  CarrinhoRecord
                                                                      .getDocumentFromData(
                                                                          createCarrinhoRecordData(
                                                                            userComprador:
                                                                                currentUserReference,
                                                                            loja:
                                                                                detalhesProdutoCatalogoMinhaLojaRecord.reference,
                                                                          ),
                                                                          carrinhoRecordReference);

                                                              var produtoCarrinhoRecordReference2 =
                                                                  ProdutoCarrinhoRecord
                                                                      .createDoc(_model
                                                                          .novoCarrinho!
                                                                          .reference);
                                                              await produtoCarrinhoRecordReference2
                                                                  .set(
                                                                      createProdutoCarrinhoRecordData(
                                                                produto: widget!
                                                                    .detalhesProduto
                                                                    ?.reference,
                                                                valorUnit: widget!
                                                                            .detalhesProduto!.valorPromocional >
                                                                        0.0
                                                                    ? widget!
                                                                        .detalhesProduto
                                                                        ?.valorPromocional
                                                                    : widget!
                                                                        .detalhesProduto
                                                                        ?.valorVenda,
                                                                quantidade: 1,
                                                                subtotal: widget!
                                                                            .detalhesProduto!.valorPromocional >
                                                                        0.0
                                                                    ? widget!
                                                                        .detalhesProduto
                                                                        ?.valorPromocional
                                                                    : widget!
                                                                        .detalhesProduto
                                                                        ?.valorVenda,
                                                              ));
                                                              _model.novoProdutoCarrinhoAdc =
                                                                  ProdutoCarrinhoRecord
                                                                      .getDocumentFromData(
                                                                          createProdutoCarrinhoRecordData(
                                                                            produto:
                                                                                widget!.detalhesProduto?.reference,
                                                                            valorUnit: widget!.detalhesProduto!.valorPromocional > 0.0
                                                                                ? widget!.detalhesProduto?.valorPromocional
                                                                                : widget!.detalhesProduto?.valorVenda,
                                                                            quantidade:
                                                                                1,
                                                                            subtotal: widget!.detalhesProduto!.valorPromocional > 0.0
                                                                                ? widget!.detalhesProduto?.valorPromocional
                                                                                : widget!.detalhesProduto?.valorVenda,
                                                                          ),
                                                                          produtoCarrinhoRecordReference2);

                                                              await _model
                                                                  .novoCarrinho!
                                                                  .reference
                                                                  .update({
                                                                ...mapToFirestore(
                                                                  {
                                                                    'total': FieldValue.increment(_model
                                                                        .novoProdutoCarrinhoAdc!
                                                                        .valorUnit),
                                                                  },
                                                                ),
                                                              });

                                                              context.pushNamed(
                                                                'Checkout',
                                                                queryParameters:
                                                                    {
                                                                  'loja':
                                                                      serializeParam(
                                                                    detalhesProdutoCatalogoMinhaLojaRecord,
                                                                    ParamType
                                                                        .Document,
                                                                  ),
                                                                }.withoutNulls,
                                                                extra: <String,
                                                                    dynamic>{
                                                                  'loja':
                                                                      detalhesProdutoCatalogoMinhaLojaRecord,
                                                                  kTransitionInfoKey:
                                                                      TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            0),
                                                                  ),
                                                                },
                                                              );
                                                            }

                                                            safeSetState(() {});
                                                          },
                                                          text: 'Adicionar',
                                                          icon: Icon(
                                                            Icons
                                                                .shopping_cart_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            size: 20.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            height: 50.0,
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Outfit',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                            elevation: 3.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryText,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x55000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 24.0, 16.0, 24.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 16.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Pedir por Whatsapp',
                                  icon: FaIcon(
                                    FontAwesomeIcons.whatsapp,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 20.0,
                                  ),
                                  options: FFButtonOptions(
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 12.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF42C452),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    elevation: 0.0,
                                    borderSide: BorderSide(
                                      color: Color(0xFF42C452),
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Adicionar',
                                  icon: Icon(
                                    Icons.shopping_cart_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    size: 20.0,
                                  ),
                                  options: FFButtonOptions(
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 12.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
