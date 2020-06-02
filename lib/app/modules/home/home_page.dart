import 'package:eusereiaprovado/app/core/components/custom_drawer/custom_drawer_widget.dart';
import 'package:eusereiaprovado/app/core/components/custom_raised_button_widget.dart';
import 'package:eusereiaprovado/app/core/components/custom_scaffold_widget.dart';
import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:eusereiaprovado/app/core/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import "dart:math";

import 'widgets/boxHorizontal/boxHorizontal_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Eu Serei Aprovado"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List _disc = [
    {'icon': 'gramatica.png', 'disc': 'Portugues'},
    {'icon': 'formula.png', 'disc': 'Matemática'},
    {'icon': 'formula.png', 'disc': 'Rac. Lógico'},
    {'icon': 'codigo.png', 'disc': 'Informática'},
    {'icon': 'metodo.png', 'disc': 'Atualidades'},
    {'icon': 'seguranca.png', 'disc': 'Leg. Específica'},
  ];
  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      hasMenu: true,
      iconActionColor: colorDefault,
      scaffoldKey: _scaffoldKey,
      title: 'Eu Serei Aprovado',
      customDrawer: CustomDrawerWidget(),
      widgets: SingleChildScrollView(
        child:  Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 230,
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          BoxHorizontalWidget(
                            icons: Icons.data_usage,
                            altura: 110,
                            cor01: Colors.blueAccent[200],
                            cor02: Colors.deepPurple[600],
                            titulo: 'RANKING',
                            subTitulo: '352',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          BoxHorizontalWidget(
                            icons: Icons.all_inclusive,
                            altura: 110,
                            cor01: Colors.green[300],
                            cor02: Colors.green[700],
                            titulo: 'QUESTÕES RESOLVIDAS',
                            subTitulo: '23300',
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('SEU PERFIL'),
                                )),
                                CircleAvatar(
                                  maxRadius: 35,
                                  backgroundImage: AssetImage(
                                      'assets/images/foto_profile.jpg'),
                                ),
                                Text(
                                  'Alan Abreu',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'alan__abreu@gmail.com.br',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.grey[400]),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.6,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 12),
                          child: Text('DISCPLINAS'),
                        ),
                        Expanded(
                            child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                          itemBuilder: (_, index) {
                            final _random = new Random();
                            return Column(
                              children: <Widget>[
                                Center(
                                    child: CircleAvatar(
                                        maxRadius: 35,
                                        backgroundColor: Helpers().colorSwitch[
                                            _random.nextInt(
                                                Helpers().colorSwitch.length)],
                                        child: Image.asset(
                                            'assets/icons/${_disc[index]["icon"]}',
                                            width: 35))),
                                Text(
                                  '${_disc[index]["disc"]}',
                                  style: TextStyle(fontSize: 12),
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            );
                          },
                          itemCount: _disc.length,
                        ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomRaisedButtonWidget(
                  btnName: 'RESOLVER QUESTÕES',
                  accentColor: Helpers().parseColor(colorDefault),
                  verticalSize: 20,
                  action: () => print('resolver'),
                )
              ],
            ),
          ),
        ),
          
    );
  }
}
