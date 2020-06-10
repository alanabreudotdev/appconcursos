import 'package:mobx/mobx.dart';

part 'teoria_controller.g.dart';

class TeoriaController = _TeoriaControllerBase with _$TeoriaController;

abstract class _TeoriaControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
