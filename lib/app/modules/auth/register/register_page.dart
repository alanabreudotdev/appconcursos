import 'package:eusereiaprovado/app/core/helpers.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/components/custom_raised_button_widget.dart';
import '../../../core/components/custom_text_widget.dart';
import '../../../core/constants.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key key, this.title = "Register"}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.arrow_back), onPressed: ()=> Modular.to.pop()),
                      Text(
                            'Registrar',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                       
                    ],
                  ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.2,
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    
                    Image.asset(
                      profileIcon,
                      width: 100,
                    ),
                    Container(
                     padding:  const EdgeInsets.only(bottom: 10.0, right: 10),
                      child: Column(
                        children: <Widget>[
                          CustomTextWidget(
                      labelText: 'Nome Completo',
                    ),
                    SizedBox(height: 20,),
                    CustomTextWidget(
                      labelText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 20,),
                    CustomTextWidget(
                      labelText: 'Senha',
                      hasSuffix: true,
                      isObscure: true,
                    ),
                        ],
                      ),
                    ),
                    
                    CustomRaisedButtonWidget(
                      btnName: 'Cadastrar',
                      accentColor: Helpers().parseColor(colorDefault),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
