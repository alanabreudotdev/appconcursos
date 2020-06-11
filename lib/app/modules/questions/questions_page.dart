import 'package:eusereiaprovado/app/core/components/custom_raised_button_widget.dart';
import 'package:eusereiaprovado/app/core/components/custom_scaffold_widget.dart';
import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:eusereiaprovado/app/core/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'components/qst_answer/qst_answer_widget.dart';
import 'components/qst_enunciado_header/qst_enunciado_header_widget.dart';
import 'components/qst_itens/qst_itens_widget.dart';
import 'components/qst_text_header/qst_text_header_widget.dart';
import 'questions_controller.dart';
import 'package:asuka/asuka.dart' as asuka;

class QuestionsPage extends StatefulWidget {
  final String title;
  const QuestionsPage({Key key, this.title = "Questões"}) : super(key: key);

  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState
    extends ModularState<QuestionsPage, QuestionsController> {
  //use 'controller' variable to access controller

  //controller from pageview.builder
  PageController _pageCtrl = PageController();

  @override
  void didChangeDependencies() {
    autorun((_) {
      //get Questions on Loading Screen
      controller.getQuestionfromRepo();
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
        scaffoldBackColor: Colors.grey[50],
        hasMenu: false,
        iconActionColor: colorDefault,
        isCenterTitle: true,
        title: widget.title,
        widgets: Observer(builder: (_) {
          return !controller.isLoading
              ? PageView.builder(
                  onPageChanged: (index) {
                    controller.answerSelectedRadio = null;
                    controller.setQuestionAnswered(false);
                  },
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageCtrl,
                  itemCount: controller.questions.length,
                  itemBuilder: (context, index) {
                    var _qst = controller.questions[index];

                    return SingleChildScrollView(
                        child: Expanded(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 5,
                          ),

                          //TEXT OF QUESTION
                          QstTextHeaderWidget(_qst.thumbnail),

                          //ENUNCIADO OF QUESTION
                          QstEnunciadoHeaderWidget(
                            enunciadoTxt: _qst.title,
                          ),

                          //ITENS OF QUESTION
                          QstItensWidget(
                            answer: _qst.answer,
                            numberofAnswer: _qst.numberOfAnswer,
                            choiceA: _qst.choiceA,
                            choiceB: _qst.choiceB,
                            choiceC: _qst.choiceC,
                            choiceD: _qst.choiceD,
                            choiceE: _qst.choiceE,
                          ),

                          //ANSWER AND COMMENTS OF QUESTION
                          //if has comment, show the answer and comment
                          Observer(
                            builder: (_) {
                              return controller.questionAnswered
                                  ? QstAnswerWidget(
                                    explanationVideo: _qst.explanationVideo,
                                    explanation: _qst.explanation,
                                    )
                                  : Container();
                            },
                          ),

                          //BTN RESPONDER, NEXT QUESTION AND BTN REFAZER QUESTIONS WHEN FINISH ALL QUESTIONS
                          Observer(
                            builder: (_) {
                              return !controller.questionAnswered
                                  ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomRaisedButtonWidget(
                                        btnName: 'Responder',
                                        verticalSize: 15,
                                        accentColor:
                                            Helpers().parseColor(colorDefault),
                                        action: () => controller
                                            .responderQuestion()
                                            .then((value) => {
                                              value == null ? asuka.showSnackBar(SnackBar(
    content: Text("Selecione uma Opção"),
)): null
                                            }),
                                      ),
                                    )
                                  : controller.questions.length != index+1 ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomRaisedButtonWidget(
                                        btnName: 'Próxima',
                                        verticalSize: 15,
                                        accentColor:
                                            Helpers().parseColor(colorDefault),
                                        action: () {
                                          _pageCtrl.animateToPage(
                                              _pageCtrl.page.ceil() + 1,
                                              duration: Duration(seconds: 1),
                                              curve: Curves.linearToEaseOut);
                                        },
                                      ),
                                    ): Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CustomRaisedButtonWidget(
                                        btnName: 'Refazer questões',
                                        verticalSize: 15,
                                        accentColor:
                                            Helpers().parseColor(colorDefault),
                                       action: () {
                                          _pageCtrl
                                          .jumpToPage(_pageCtrl.page.ceil()  - controller.questions.length);
                                        },
                                      ),
                                    );
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ));
                  })
              : Center(child: CircularProgressIndicator());
        }));
  }
}
