import 'package:eusereiaprovado/app/core/components/custom_drawer/custom_drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';


class CustomDrawerWidget extends StatefulWidget {
  @override
  _CustomDrawerWidgetState createState() => _CustomDrawerWidgetState();
}

class _CustomDrawerWidgetState extends ModularState<CustomDrawerWidget, CustomDrawerController> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.80,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.close), onPressed: () => Modular.to.pop()),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: GestureDetector(
                    child: Text(
                      'Logout',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () => print('Logout'),
                  ),
                )
              ],
            ),
            DrawerHeader(
              child: Stack(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/foto_profile.jpg'),
                        radius: 50.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Alan Abrue dos Santos',
                                overflow: TextOverflow.ellipsis),
                            Text(
                              'aas2512@gmail.com',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(
                      Icons.menu,
                      color: Colors.green,
                    ),
                    title: Text('Início'),
                    onTap: () => Modular.to.pushReplacementNamed('/home'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.book,
                      color: Colors.blue,
                    ),
                    title: Text('Disciplinas'),
                    onTap: () => Modular.to.pushReplacementNamed('/disciplinas'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.question_answer,
                      color: Colors.purple,
                    ),
                    title: Text('Questões'),
                    onTap: () => print('home'),
                  ),
                   ListTile(
                    leading: Icon(
                      Icons.equalizer,
                      color: Colors.blueGrey,
                    ),
                    title: Text('Ranking'),
                    onTap: () => Modular.to.pushNamed('/ranking'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.notifications_active,
                      color: Colors.red,
                    ),
                    title: Text('Notificações'),
                    onTap: () => Modular.to.pushNamed('/notifications'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      color: Colors.cyan,
                    ),
                    title: Text('Perfil'),
                    onTap: () => Modular.to.pushNamed('/profile'),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.orange,
                    ),
                    title: Text('Suporte'),
                    onTap: () => Modular.to.pushNamed('/support'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


