import 'package:eusereiaprovado/app/modules/questions/questions_controller.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class QstAnswerWidget extends StatefulWidget {
  final String explanation;
  final String explanationVideo;

  QstAnswerWidget({this.explanation, this.explanationVideo});

  @override
  _QstAnswerWidgetState createState() => _QstAnswerWidgetState();
}

class _QstAnswerWidgetState extends State<QstAnswerWidget> {
  var _controller = ExpandableController(initialExpanded: false);

  var controller = Modular.get<QuestionsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Observer(builder: (_) {
          print(widget.explanationVideo);
          return Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Center(
                      child: controller.checkAnswerResult
                          ? Text(
                              'ACERTOU!',
                              style: TextStyle(color: Colors.green),
                            )
                          : Text(
                              'ERROU!',
                              style: TextStyle(color: Colors.red),
                            ))
          );
        }),
        SizedBox(
          height: 10,
        ),
        this.widget.explanation != null
            ? Padding(
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
                              Icon(
                                Icons.chat_bubble_outline,
                                size: 17,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Comentário da Questão'),
                            ],
                          )),
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
              )
            : Container(),
      ],
    );
  }
}
