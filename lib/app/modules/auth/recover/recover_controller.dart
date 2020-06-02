import 'package:mobx/mobx.dart';

part 'recover_controller.g.dart';

class RecoverController = _RecoverControllerBase with _$RecoverController;

abstract class _RecoverControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
