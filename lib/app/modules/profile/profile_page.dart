import 'package:eusereiaprovado/app/core/components/custom_drawer/custom_drawer_widget.dart';
import 'package:eusereiaprovado/app/core/components/custom_scaffold_widget.dart';
import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key key, this.title = "Profile"}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends ModularState<ProfilePage, ProfileController> {
  //use 'controller' variable to access controller

  GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      
        hasMenu: false,
        scaffoldKey: _key,
        iconActionColor: colorDefault,
        title: '',
        customDrawer: CustomDrawerWidget(),
        actionsButtons: <Widget>[
          GestureDetector(
            onTap: () => Modular.link.pushNamed('/profile-edit'),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'editar perfil',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
        widgets: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.2,
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[_top(), _middleBody(), _bottomBody()],
            ),
          ),
        ));
  }

  _top() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            maxRadius: 60,
            backgroundImage: AssetImage('assets/images/foto_profile.jpg'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Alan Abreu',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 5),
          Text(
            'alan__abreu@gmail.com.br',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12, color: Colors.grey[400]),
          ),
        ],
      ),
    );
  }

  _middleBody() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _middleCard('Ranking', '#350'),
      ],
    );
  }

  _middleCard(String title, String value) {
    return Column(
      children: <Widget>[
        Text(title, style: TextStyle(color: Colors.grey[500], fontSize: 14)),
        SizedBox(
          height: 8,
        ),
        Text(value, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23))
      ],
    );
  }

  _bottomBody() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text('Respondidas'), Text('5236 questões')],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text('Acertos'), Text('4360 questões')],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text('Erros'), Text('1200 questões')],
        ),
        SizedBox(
          height: 50,
        ),
        _linearProgressBar(0.7)
      ],
    );
  }

  _linearProgressBar(double value) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text('Acertei'), Text('Errei')],
        ),
        SizedBox(
          height: 5,
        ),
        LinearProgressIndicator(
          backgroundColor: Colors.red,
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.green),
          value: value,
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text('70%'), Text('30%')],
        )
      ],
    );
  }
}
