import 'package:eusereiaprovado/app/modules/questions/questions_controller.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QstTextHeaderWidget extends StatelessWidget {

  var _controller = ExpandableController(initialExpanded: false);
  final controller = Modular.get<QuestionsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0, right: 8),
      child: Card(
        elevation: 0.5,
        child: Container(
          child: ExpandablePanel(
            controller: _controller,
            header: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.subject, size: 17,),
                  SizedBox(width: 5,),
                  Text(controller.textEnun),
                ],
              )
            ),
            collapsed: Container(),
            expanded: Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width/1.6,
                child: Html(
                  shrinkWrap: true,
                  data: htmlData,
                  style: {
                    "p": Style(
                        textAlign: TextAlign.justify, fontSize: FontSize.xSmall),
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String htmlData = """
<p>No tocante ao Estatuto dos Servidores Civis do Estado do Ceará, Lei 9826/74, e quanto às licenças, julgue os itens: \r\nI- A licença depende de inspeção médica e terá a duração que for indicada no respectivo laudo. \r\nII- A licença poderá ser determinada ou prorrogada, de ofício ou a pedido.\r\nIII- São competentes para licenciar o funcionário os dirigentes do Sistema Administrativo Estadual, admitida a delegação, na forma do Regulamento..</p>
""";
}
