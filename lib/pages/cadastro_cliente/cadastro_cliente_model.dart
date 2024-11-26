import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/header_catalogo/header_catalogo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cadastro_cliente_widget.dart' show CadastroClienteWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastroClienteModel extends FlutterFlowModel<CadastroClienteWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for headerCatalogo component.
  late HeaderCatalogoModel headerCatalogoModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for senha1 widget.
  FocusNode? senha1FocusNode;
  TextEditingController? senha1TextController;
  late bool senha1Visibility;
  String? Function(BuildContext, String?)? senha1TextControllerValidator;
  // State field(s) for senha2 widget.
  FocusNode? senha2FocusNode;
  TextEditingController? senha2TextController;
  late bool senha2Visibility;
  String? Function(BuildContext, String?)? senha2TextControllerValidator;

  @override
  void initState(BuildContext context) {
    headerCatalogoModel = createModel(context, () => HeaderCatalogoModel());
    senha1Visibility = false;
    senha2Visibility = false;
  }

  @override
  void dispose() {
    headerCatalogoModel.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    senha1FocusNode?.dispose();
    senha1TextController?.dispose();

    senha2FocusNode?.dispose();
    senha2TextController?.dispose();
  }
}
