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

 List _disc = [
    {'icon': 'gramatica.png', 'disc': 'Portugues'},
    {'icon': 'formula.png', 'disc': 'Matemática'},
    {'icon': 'formula.png', 'disc': 'Rac. Lógico'},
    {'icon': 'codigo.png', 'disc': 'Informática'},
    {'icon': 'metodo.png', 'disc': 'Atualidades'},
    {'icon': 'seguranca.png', 'disc': 'Legislação Específicaaasas'},
  ];

@override
Widget build(BuildContext context) {
  return CustomScaffoldWidget(
     hasMenu: false,
      isCenterTitle: true,
      iconActionColor: colorDefault,
      title: 'Teoria',
      widgets: ListView.builder(
        itemCount: _disc.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.only(left:10.0, right: 10),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/icons/${_disc[index]["icon"]}'),
                    maxRadius: 25,
                  ),
                  title: Text('${_disc[index]["disc"]}',
                  overflow: TextOverflow.ellipsis,) ,
                  trailing: Icon(Icons.arrow_right),
                  onTap: () => Modular.link.pushNamed('/teoria/${_disc[index]["disc"]}'),
                ),
              ),
            ),
          );
        })
  );
}


 
 /* GlobalKey<ScaffoldState> _keySca = GlobalKey<ScaffoldState>();
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
  } */
}
