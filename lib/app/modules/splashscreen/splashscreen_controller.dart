import 'package:mobx/mobx.dart';

part 'splashscreen_controller.g.dart';

class SplashscreenController = _SplashscreenControllerBase
    with _$SplashscreenController;

abstract class _SplashscreenControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
