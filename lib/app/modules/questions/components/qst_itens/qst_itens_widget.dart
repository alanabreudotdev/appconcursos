import 'package:eusereiaprovado/app/modules/questions/components/qst_itens/qst_itens_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

//ESPECIFICACOES
//Ao pressionar com um toque mais longo o item da questão será tachado com um risco, ficando o item eliminado


class QstItensWidget extends StatelessWidget {
   
   final controller = Modular.get<QstItensController>();

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        itemQst(),
        itemQst(),
        itemQst(),
        itemQst(),
        itemQst(),
      ]),
    );
  }


 itemQst(){
   return Observer(builder: (_){
          return GestureDetector(
          onLongPress: () => print('toque longo'),
          child: Card(
            elevation: 0.5,
            child: Container(
              color: Colors.white,
              child: RadioListTile(
                  dense: true,
                  title: Text(
                    "apenas o item I está correto.",
                    softWrap: true,
                    //style: _questionStyle,

                    style: TextStyle(
                        fontSize: 14, decoration: TextDecoration.none),
                  ),
                  groupValue: controller.selectedRadio,
                  value: 'a',
                  onChanged: (value) {
                  controller.setSelectedRadio(value);
                  }),
            ),
          ),
        );
        });
 }

}
