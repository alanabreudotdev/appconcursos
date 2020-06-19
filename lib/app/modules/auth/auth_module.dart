import 'package:eusereiaprovado/app/core/helpers.dart';
import 'package:eusereiaprovado/app/core/repositories/api_repository.dart';
import 'package:eusereiaprovado/app/modules/auth/recover/recover_controller.dart';
import 'package:eusereiaprovado/app/modules/auth/recover/recover_page.dart';
import 'package:eusereiaprovado/app/modules/auth/register/register_controller.dart';
import 'package:eusereiaprovado/app/modules/auth/auth_controller.dart';
import 'package:eusereiaprovado/app/modules/auth/register/register_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:eusereiaprovado/app/modules/auth/auth_page.dart';

class AuthModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RecoverController()),
        Bind((i) => RegisterController()),
        Bind((i) => AuthController(i.get<ApiRepository>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => AuthPage()),
        Router('/register', child: (_, args) => RegisterPage(), transition: Helpers().transitions),
        Router('/recover', child: (_, args) => RecoverPage(), transition: Helpers().transitions),
      ];

  static Inject get to => Inject<AuthModule>.of();
}
