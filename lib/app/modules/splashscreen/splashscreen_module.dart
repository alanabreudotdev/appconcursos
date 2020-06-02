import 'package:eusereiaprovado/app/modules/splashscreen/splashscreen_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:eusereiaprovado/app/modules/splashscreen/splashscreen_page.dart';

class SplashscreenModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashscreenController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SplashscreenPage()),
      ];

  static Inject get to => Inject<SplashscreenModule>.of();
}
