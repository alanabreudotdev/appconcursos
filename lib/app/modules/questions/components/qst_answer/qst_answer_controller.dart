import 'package:mobx/mobx.dart';

part 'qst_answer_controller.g.dart';

class QstAnswerController = _QstAnswerControllerBase with _$QstAnswerController;

abstract class _QstAnswerControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
