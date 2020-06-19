import 'package:eusereiaprovado/app/modules/questions/components/qst_itens/qst_itens_controller.dart';
import 'package:eusereiaprovado/app/modules/questions/questions_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

//ESPECIFICACOES
//Ao pressionar com um toque mais longo o item da questão será tachado com um risco, ficando o item eliminado

class QstItensWidget extends StatelessWidget {
  final String choiceA;
  final String choiceB;
  final String choiceC;
  final String choiceD;
  final String choiceE;
  final String answer;
  final int numberofAnswer;

  final controller = Modular.get<QuestionsController>();

  QstItensWidget(
      {this.choiceA,
      this.choiceB,
      this.choiceC,
      this.choiceD,
      this.choiceE,
      this.numberofAnswer, this.answer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        choiceA != null ? itemQst(item: choiceA, value: choiceA) : Container(),
        choiceB != null ? itemQst(item: choiceB, value: choiceB) : Container(),
        choiceC != null ? itemQst(item: choiceC, value: choiceC) : Container(),
        choiceD != null ? itemQst(item: choiceD, value: choiceD) : Container(),
        choiceE != null ? itemQst(item: choiceE, value: choiceE) : Container(),
      ]),
    );
  }

  itemQst({@required String item, @required String value, TextDecoration txtDecoration}) {
    return Observer(builder: (_) {
      return GestureDetector(
        onLongPress: () => print(item),
        child: Card(
          elevation: 0.5,
          child: Container(
            color: Colors.white,
            child: RadioListTile(
                
                dense: true,
                title: Text(
                  item,
                  softWrap: true,
                  //style: _questionStyle,
                  style:
                      TextStyle(fontSize: 14, decoration: TextDecoration.none),
                ),
                
                groupValue: controller.answerSelectedRadio,
                value: value,
                onChanged: (value) {
                  print("Escolha do usuario: {$value}");
                  print("Resposta: {$answer}");

                  controller.answerCorrect = answer;
                  controller.questionAnswered ?  null : controller.setAnswerSelectedRadio(value);
                }),
          ),
        ),
      );
    });
  }
}
