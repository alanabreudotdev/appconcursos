import 'package:mobx/mobx.dart';

part 'support_controller.g.dart';

class SupportController = _SupportControllerBase with _$SupportController;

abstract class _SupportControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
