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
        hasMenu: true,
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
             child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _top(),
                ],
              ),
            ),
          
        ));
  }

  _top() {
    return Container(
      width: 250,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          CircleAvatar(
            maxRadius: 60,
            backgroundImage: AssetImage('assets/images/foto_profile.jpg'),
          ),
          SizedBox(height: 20,),
          Text(
            'Alan Abreu dos Santos Lima',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 5),
          Text(
            'alan__abreu@gmail.com.br',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 10, color: Colors.grey[400]),
          )
        ],
      ),
    );
  }
}
