import 'package:eusereiaprovado/app/app_controller.dart';
import 'package:eusereiaprovado/app/modules/auth/auth_module.dart';
import 'package:eusereiaprovado/app/modules/home/home_module.dart';
import 'package:eusereiaprovado/app/modules/profile/profile_module.dart';
import 'package:eusereiaprovado/app/modules/splashscreen/splashscreen_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:eusereiaprovado/app/app_widget.dart';

import 'core/components/custom_drawer/custom_drawer_controller.dart';
import 'core/helpers.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => CustomDrawerController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            module: SplashscreenModule(), transition: Helpers().transitions),
        Router('/login',
            module: AuthModule(), transition: Helpers().transitions),
        Router('/home', module: HomeModule(), transition: Helpers().transitions),
        Router('/profile', module: ProfileModule(), transition: Helpers().transitions)
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
