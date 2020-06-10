import 'dart:convert';

import 'package:eusereiaprovado/app/core/components/custom_scaffold_widget.dart';
import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TeoriaPage extends StatefulWidget {
  final String title;
  const TeoriaPage({Key key, this.title = "Teoria"}) : super(key: key);

  @override
  _TeoriaPageState createState() => _TeoriaPageState();
}

class _TeoriaPageState extends State<TeoriaPage> {
   GlobalKey<ScaffoldState> _keySca = GlobalKey<ScaffoldState>();
  WebViewController _controller;
   @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      hasMenu: false,
      scaffoldKey: _keySca,
      isCenterTitle: true,
      iconActionColor: colorDefault,
      title: widget.title,
      widgets: WebView(
        initialUrl: 'about:blank',
        onWebViewCreated: (WebViewController webViewController) {
          _controller = webViewController;
          _loadHtmlFromAssets();
        },
      ),
      
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
