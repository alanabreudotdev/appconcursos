import 'package:mobx/mobx.dart';

part 'qst_enunciado_header_controller.g.dart';

class QstEnunciadoHeaderController = _QstEnunciadoHeaderControllerBase
    with _$QstEnunciadoHeaderController;

abstract class _QstEnunciadoHeaderControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
