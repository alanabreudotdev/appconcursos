import 'package:eusereiaprovado/app/modules/profile/profile_controller.dart';
import 'package:eusereiaprovado/app/modules/profile/profile_edit/profile_edit_controller.dart';
import 'package:eusereiaprovado/app/modules/profile/profile_edit/profile_edit_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:eusereiaprovado/app/modules/profile/profile_page.dart';

class ProfileModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProfileEditController()),
        Bind((i) => ProfileController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ProfilePage()),
        Router('/profile-edit', child: (_, args) => ProfileEditPage())
      ];

  static Inject get to => Inject<ProfileModule>.of();
}
