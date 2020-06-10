import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

class QstAnswerWidget extends StatefulWidget {
  final String explanation;

  

  QstAnswerWidget({this.explanation});

  @override
  _QstAnswerWidgetState createState() => _QstAnswerWidgetState();
}

class _QstAnswerWidgetState extends State<QstAnswerWidget> {
  var _controller = ExpandableController(initialExpanded: false);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
         SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Card(
            color: Colors.green,
            child: Container(
            padding: EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width,
            child: Center(child: Text('Acertou'))),),
        ),
        SizedBox(height: 10,),
        this.widget.explanation != null ? Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Card(
            elevation: 0.5,
            child: Container(
              child: ExpandablePanel(
                controller: _controller,
                header: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.chat_bubble_outline, size: 17,),
                      SizedBox(width: 5,),
                      Text('Comentário da Questão'),
                    ],
                  )
                ),
                collapsed: Container(),
                expanded: Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.63,
                    child: Html(
                      shrinkWrap: true,
                      data: widget.explanation,
                      style: {
                        "p": Style(
                            textAlign: TextAlign.justify,
                            fontSize: FontSize.xSmall),
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ):Container(),
      ],
    );
  }

  String htmlData = """
<p>No tocante ao Estatuto dos Servidores Civis do Estado do Ceará, Lei 9826/74, e quanto às licenças, julgue os itens: \r\nI- A licença depende de inspeção médica e terá a duração que for indicada no respectivo laudo. \r\nII- A licença poderá ser determinada ou prorrogada, de ofício ou a pedido.\r\nIII- São competentes para licenciar o funcionário os dirigentes do Sistema Administrativo Estadual, admitida a delegação, na forma do Regulamento..</p>

  """;
}

