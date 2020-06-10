import 'package:eusereiaprovado/app/core/components/custom_raised_button_widget.dart';
import 'package:eusereiaprovado/app/core/components/custom_scaffold_widget.dart';
import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:eusereiaprovado/app/core/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'components/qst_answer/qst_answer_widget.dart';
import 'components/qst_enunciado_header/qst_enunciado_header_widget.dart';
import 'components/qst_itens/qst_itens_widget.dart';
import 'components/qst_text_header/qst_text_header_widget.dart';
import 'questions_controller.dart';

class QuestionsPage extends StatefulWidget {
  final String title;
  const QuestionsPage({Key key, this.title = "Questões"}) : super(key: key);

  @override
  _QuestionsPageState createState() => _QuestionsPageState();
}

class _QuestionsPageState
    extends ModularState<QuestionsPage, QuestionsController> {
  //use 'controller' variable to access controller

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    autorun((_) async{
      await controller.getQuestionfromRepo();
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
      widgets: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 5,),
            QstTextHeaderWidget(),
            QstEnunciadoHeaderWidget(enunciadoTxt: controller.questions[0].title,),
            QstItensWidget(),
            QstAnswerWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomRaisedButtonWidget(
                btnName: 'Responder', 
                verticalSize: 15, 
                accentColor: Helpers().parseColor(colorDefault),
                action: ()=>controller.getQuestionfromRepo().then((value) => print(controller.questions[0].title)),),
            ),
             SizedBox(height: 15,),
          ],
        ),
      )
    );
  }
}
