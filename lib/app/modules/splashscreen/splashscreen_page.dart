import 'package:eusereiaprovado/app/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'splashscreen_controller.dart';

class SplashscreenPage extends StatefulWidget {
  final String title;
  const SplashscreenPage({Key key, this.title = "Splashscreen"})
      : super(key: key);

  @override
  _SplashscreenPageState createState() => _SplashscreenPageState();
}

class _SplashscreenPageState
    extends ModularState<SplashscreenPage, SplashscreenController> {
  //use 'controller' variable to access controller

  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 7)).then((value) => Modular.to.pushReplacementNamed('/login'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
       
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(),
           Image.asset(logoApp, width: 200,),
            Padding(
              padding: const EdgeInsets.only(bottom:25.0),
              child: Text('by criatees', style: TextStyle(fontWeight: FontWeight.w600),),
            )
          ],
        ),
      ),
    );
  }
}
