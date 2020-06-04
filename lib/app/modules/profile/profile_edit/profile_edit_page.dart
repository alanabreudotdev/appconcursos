import 'package:eusereiaprovado/app/core/components/custom_raised_button_widget.dart';
import 'package:eusereiaprovado/app/core/components/custom_scaffold_widget.dart';
import 'package:eusereiaprovado/app/core/components/custom_text_widget.dart';
import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:eusereiaprovado/app/core/helpers.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatefulWidget {
  final String title;
  const ProfileEditPage({Key key, this.title = "ProfileEdit"})
      : super(key: key);

  @override
  _ProfileEditPageState createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      isCenterTitle: false,
        iconActionColor: colorDefault,
        title: 'Editar Perfil',
        widgets: _body());
  }

  _body() {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.1,
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/foto_profile.jpg'),
              radius: 70.0,
            ),
            Column(
              children: <Widget>[
                CustomTextWidget(
                    valorInicial: "Alan Abreu dos Santos", labelText: 'Nome'),
                CustomTextWidget(
                    valorInicial: "alan__abreu@hotmail.com",
                    labelText: 'Email'),
              ],
            ),
            CustomRaisedButtonWidget(
              btnName: "Atualizar",
              accentColor: Helpers().parseColor(colorDefault),
              verticalSize: 20,
            )
          ],
        ),
      ),
    );
  }
}
