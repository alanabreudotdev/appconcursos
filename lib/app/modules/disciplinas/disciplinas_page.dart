import 'dart:convert';

import 'package:eusereiaprovado/app/core/components/custom_drawer/custom_drawer_widget.dart';
import 'package:eusereiaprovado/app/core/components/custom_scaffold_widget.dart';
import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'disciplinas_controller.dart';

class DisciplinasPage extends StatefulWidget {
  final String title;
  const DisciplinasPage({Key key, this.title = "Disciplinas"})
      : super(key: key);

  @override
  _DisciplinasPageState createState() => _DisciplinasPageState();
}

class _DisciplinasPageState
    extends ModularState<DisciplinasPage, DisciplinasController> {
  //use 'controller' variable to access controller
  GlobalKey<ScaffoldState> _keySca = GlobalKey<ScaffoldState>();
  WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      hasMenu: true,
      scaffoldKey: _keySca,
      isCenterTitle: true,
      iconActionColor: colorDefault,
      title: 'Disciplina',
      widgets: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
      customDrawer: CustomDrawerWidget(),
    );
  }

  _loadHtmlFromAssets() async {
    String fileText = await rootBundle.loadString('assets/mat.html');
    _controller.loadUrl( Uri.dataFromString(
        fileText,
        mimeType: 'text/html',
        encoding: Encoding.getByName('utf-8')
    ).toString());
  }
}
