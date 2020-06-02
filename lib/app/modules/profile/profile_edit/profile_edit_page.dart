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

  TextEditingController _name = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
        iconActionColor: colorDefault,
        title: 'Editar Perfil',
        widgets: _body()); 
  }

  _body() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(14),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.90,
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
              valorInicial: "Alan Abreu dos Santos",
              labelText: 'Nome'),
            CustomTextWidget(
              valorInicial: "alan__abreu@hotmail.com",
              labelText: 'Email'),
             ],
           ),
            CustomRaisedButtonWidget(btnName: "Atualizar", accentColor: Helpers().parseColor(colorDefault),)
          ],
        ),
      ),
    );
  }
}
