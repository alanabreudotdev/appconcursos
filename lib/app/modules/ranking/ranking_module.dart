import 'package:eusereiaprovado/app/modules/ranking/ranking_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:eusereiaprovado/app/modules/ranking/ranking_page.dart';

class RankingModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RankingController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => RankingPage()),
      ];

  static Inject get to => Inject<RankingModule>.of();
}
