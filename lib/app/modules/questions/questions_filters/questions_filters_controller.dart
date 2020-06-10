import 'package:mobx/mobx.dart';

part 'questions_filters_controller.g.dart';

class QuestionsFiltersController = _QuestionsFiltersControllerBase
    with _$QuestionsFiltersController;

abstract class _QuestionsFiltersControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
