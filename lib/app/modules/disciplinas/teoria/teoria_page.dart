import 'dart:convert';

import 'package:eusereiaprovado/app/core/components/custom_scaffold_widget.dart';
import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:eusereiaprovado/app/modules/disciplinas/teoria/teoria_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TeoriaPage extends StatefulWidget {
  final String title;
  const TeoriaPage({Key key, this.title = "Teoria"}) : super(key: key);

  @override
  _TeoriaPageState createState() => _TeoriaPageState();
}

class _TeoriaPageState extends State<TeoriaPage> {

  GlobalKey<ScaffoldState> _keySca = GlobalKey<ScaffoldState>();
  var controller = Modular.get<TeoriaController>();

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      hasMenu: false,
      scaffoldKey: _keySca,
      isCenterTitle: true,
      iconActionColor: colorDefault,
      title: widget.title,
      widgets: Observer(builder: (_) {
        return controller.fileText != null ? WebView(
          initialUrl: 'about:blank',
          
          onWebViewCreated: (WebViewController webViewController) {
            controller.webcontroller = webViewController;
            controller.loadHtmlFromAssets('assets/apostilas/rac_logico.html');

          },
          onPageStarted: (String url) {
            controller.setLoading(true);
          },
           onPageFinished: (String url) {
            controller.setLoading(false);
          },
        ) : Center(child: CircularProgressIndicator(),);
      }),
    );
  }
}
