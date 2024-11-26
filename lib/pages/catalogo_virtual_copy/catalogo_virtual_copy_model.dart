import '/backend/backend.dart';
import '/componentes/header_catalogo/header_catalogo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'catalogo_virtual_copy_widget.dart' show CatalogoVirtualCopyWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CatalogoVirtualCopyModel
    extends FlutterFlowModel<CatalogoVirtualCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for headerCatalogo component.
  late HeaderCatalogoModel headerCatalogoModel;
  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for scrollTop widget.
  ScrollController? scrollTop;
  // State field(s) for ListView widget.
  ScrollController? listViewController;

  @override
  void initState(BuildContext context) {
    headerCatalogoModel = createModel(context, () => HeaderCatalogoModel());
    columnController = ScrollController();
    scrollTop = ScrollController();
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    headerCatalogoModel.dispose();
    columnController?.dispose();
    scrollTop?.dispose();
    listViewController?.dispose();
  }
}
