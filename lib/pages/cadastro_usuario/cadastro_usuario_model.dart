import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import 'cadastro_usuario_widget.dart' show CadastroUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CadastroUsuarioModel extends FlutterFlowModel<CadastroUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailCadastro widget.
  FocusNode? emailCadastroFocusNode1;
  TextEditingController? emailCadastroTextController1;
  String? Function(BuildContext, String?)?
      emailCadastroTextController1Validator;
  // State field(s) for emailCadastro widget.
  FocusNode? emailCadastroFocusNode2;
  TextEditingController? emailCadastroTextController2;
  String? Function(BuildContext, String?)?
      emailCadastroTextController2Validator;
  // State field(s) for senhaCadastro widget.
  FocusNode? senhaCadastroFocusNode;
  TextEditingController? senhaCadastroTextController;
  late bool senhaCadastroVisibility;
  String? Function(BuildContext, String?)? senhaCadastroTextControllerValidator;
  // State field(s) for senhaCadastroConfirmar widget.
  FocusNode? senhaCadastroConfirmarFocusNode;
  TextEditingController? senhaCadastroConfirmarTextController;
  late bool senhaCadastroConfirmarVisibility;
  String? Function(BuildContext, String?)?
      senhaCadastroConfirmarTextControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaCadastroVisibility = false;
    senhaCadastroConfirmarVisibility = false;
  }

  @override
  void dispose() {
    emailCadastroFocusNode1?.dispose();
    emailCadastroTextController1?.dispose();

    emailCadastroFocusNode2?.dispose();
    emailCadastroTextController2?.dispose();

    senhaCadastroFocusNode?.dispose();
    senhaCadastroTextController?.dispose();

    senhaCadastroConfirmarFocusNode?.dispose();
    senhaCadastroConfirmarTextController?.dispose();
  }
}
