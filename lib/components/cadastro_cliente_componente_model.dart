import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/login_componente_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'cadastro_cliente_componente_widget.dart'
    show CadastroClienteComponenteWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastroClienteComponenteModel
    extends FlutterFlowModel<CadastroClienteComponenteWidget> {
  ///  State fields for stateful widgets in this component.

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
    senha1Visibility = false;
    senha2Visibility = false;
  }

  @override
  void dispose() {
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
