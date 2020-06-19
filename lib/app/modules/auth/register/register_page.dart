import 'package:eusereiaprovado/app/core/helpers.dart';
import 'package:eusereiaprovado/app/modules/auth/register/register_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/components/custom_raised_button_widget.dart';
import '../../../core/components/custom_text_widget.dart';
import '../../../core/constants.dart';
import 'package:flutter/material.dart';
import 'package:asuka/asuka.dart' as asuka;

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key key, this.title = "Register"}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends ModularState<RegisterPage, RegisterController> {


  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  TextEditingController _passConfirmatiController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            autovalidate: true,
      key: _formKey,
                      child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () => Modular.to.pop()),
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
                  height: MediaQuery.of(context).size.height / 1.2,
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
                        padding: const EdgeInsets.only(bottom: 10.0, right: 10),
                        child: Column(
                          children: <Widget>[
                            Observer(builder: (_) {
                              return CustomTextWidget(
                                controller: _nameController,
                                labelText: 'Nome Completo',
                                onChange: controller.setName,
                                validated: (_) {
                                  if(!controller.isNameValid){
                                    return 'Digite seu nome'; 
                                  }
                                  return null; 
                                },
                              );
                            }),
                            SizedBox(
                              height: 20,
                            ),
                            Observer(builder: (_) {
                              return CustomTextWidget(
                                controller: _emailController,
                                labelText: 'Email',
                                onChange: controller.setEmail,
                                keyboardType: TextInputType.emailAddress,
                                 validated: (_) {
                                  if(!controller.isEmailValid){
                                    return 'Digite um email válido'; 
                                  }
                                  return null; 
                                },
                              );
                            }),
                            SizedBox(
                              height: 20,
                            ),
                            Observer(builder: (_) {
                              return CustomTextWidget(
                                controller: _passController,
                                labelText: 'Senha',
                               onChange: controller.setPass,
                                isObscure: true,
                                 validated: (_) {
                                  if(!controller.isPasswordValid){
                                    return 'Minimo de 6 caracteres'; 
                                  }
                                  return null; 
                                },
                              );
                            }),
                            SizedBox(
                              height: 20,
                            ),
                            Observer(builder: (_) {
                              return CustomTextWidget(
                                controller: _passConfirmatiController,
                                labelText: 'Confirmar Senha',
                                onChange: controller.setPassConfirmation,
                                isObscure: true,
                                validated: (_) {
                                  if(!controller.passConfirmationIsValid){
                                    return 'Minimo de 6 caracteres'; 
                                  }
                                  return null; 
                                },
                              );
                            }),
                          ],
                        ),
                      ),
                      Observer(builder: (_) {
                        return CustomRaisedButtonWidget(
                          btnName: 'Cadastrar',
                          verticalSize: 20,
                          accentColor: Helpers().parseColor(colorDefault),
                          action: controller.isPressed,
                        );
                      })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
