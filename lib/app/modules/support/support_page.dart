import 'package:eusereiaprovado/app/core/components/custom_raised_button_widget.dart';
import 'package:eusereiaprovado/app/core/components/custom_scaffold_widget.dart';
import 'package:eusereiaprovado/app/core/components/custom_text_widget.dart';
import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:eusereiaprovado/app/core/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'support_controller.dart';

class SupportPage extends StatefulWidget {
  final String title;
  const SupportPage({Key key, this.title = "Support"}) : super(key: key);

  @override
  _SupportPageState createState() => _SupportPageState();
}

class _SupportPageState extends ModularState<SupportPage, SupportController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      hasMenu: false, 
      isCenterTitle: false,
      iconActionColor:colorDefault, 
      title: 'Suporte', 
      widgets: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.1,
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Olá! Envie para nós sua dúvida, sugestão, feedback ou reclamação.',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Ficaremos feliz em ajudá-lo.',
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 10.0, right: 10),
                child: Column(
                  children: <Widget>[
                    CustomTextWidget(
                      labelText: 'Seu Nome',
                      keyboardType: TextInputType.text,
                    ),
                    CustomTextWidget(
                      labelText: 'Seu Email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    CustomTextWidget(
                      labelText: 'Sua Mensagem',
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    CustomRaisedButtonWidget(
                      verticalSize: 20,
                      btnName: 'Enviar',
                      accentColor: Helpers().parseColor(colorDefault),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}
