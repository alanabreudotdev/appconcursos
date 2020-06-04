import 'package:mobx/mobx.dart';

part 'disciplinas_controller.g.dart';

class DisciplinasController = _DisciplinasControllerBase
    with _$DisciplinasController;

abstract class _DisciplinasControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
