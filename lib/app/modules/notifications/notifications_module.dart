import 'package:eusereiaprovado/app/modules/notifications/notifications_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:eusereiaprovado/app/modules/notifications/notifications_page.dart';

class NotificationsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NotificationsController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => NotificationsPage()),
      ];

  static Inject get to => Inject<NotificationsModule>.of();
}
