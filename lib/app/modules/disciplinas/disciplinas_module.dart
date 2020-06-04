import 'package:eusereiaprovado/app/modules/disciplinas/disciplinas_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:eusereiaprovado/app/modules/disciplinas/disciplinas_page.dart';

class DisciplinasModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DisciplinasController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => DisciplinasPage()),
      ];

  static Inject get to => Inject<DisciplinasModule>.of();
}
