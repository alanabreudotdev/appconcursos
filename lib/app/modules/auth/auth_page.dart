import 'package:eusereiaprovado/app/core/components/custom_raised_button_widget.dart';
import 'package:eusereiaprovado/app/core/components/custom_text_widget.dart';
import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:eusereiaprovado/app/core/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'auth_controller.dart';

class AuthPage extends StatefulWidget {
  final String title;
  const AuthPage({Key key, this.title = "Auth"}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends ModularState<AuthPage, AuthController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.1,
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 0.0, right: 0),
                        child: Text(
                          'Novo Usuário?',
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onTap: () => Modular.link.pushNamed('/register'),
                    )
                  ],
                ),
                Image.asset(
                  logoApp,
                  width: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Seja Bem-vindo!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Container(
                  width: 70,
                  height: 6,
                  decoration: BoxDecoration(
                      color: Helpers().parseColor(colorDefault),
                      borderRadius: BorderRadius.circular(20)),
                ),
                CustomTextWidget(
                  labelText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                CustomTextWidget(
                  labelText: 'Senha',
                  hasSuffix: true,
                  isObscure: true,
                  suffixAction: GestureDetector(
                    child: Text(
                      'Esqueceu?',
                      style: TextStyle(fontSize: 14),
                    ),
                    onTap: () => Modular.link.pushNamed('/recover'),
                  ),
                ),
                CustomRaisedButtonWidget(
                  btnName: 'Entrar',
                  accentColor: Helpers().parseColor(colorDefault),
                  action: () => Modular.to.pushReplacementNamed('/home'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
