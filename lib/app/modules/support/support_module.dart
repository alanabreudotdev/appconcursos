import 'package:eusereiaprovado/app/modules/support/support_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:eusereiaprovado/app/modules/support/support_page.dart';

class SupportModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SupportController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => SupportPage()),
      ];

  static Inject get to => Inject<SupportModule>.of();
}
