
import 'package:eusereiaprovado/app/modules/questions/models/question_model.dart';
import 'package:eusereiaprovado/app/modules/questions/repository/question_repository.dart';
import 'package:mobx/mobx.dart';

part 'questions_controller.g.dart';

class QuestionsController = _QuestionsControllerBase with _$QuestionsController;

abstract class _QuestionsControllerBase with Store {

  final QuestionRepository questionRepository;

  _QuestionsControllerBase(this.questionRepository);

  @observable
  bool isLoading = false;

  @observable
  String textEnun = 'carregando';

  

  @observable
  List<QuestionApiModel> questions;

  @action
  void setIsLoading(bool value) => isLoading = value;

  @action
  getQuestionfromRepo() async {
    setIsLoading(true);
    questionRepository.fetchQuestions().then((value) { 
      
      questions = value;
       setIsLoading(false);
      });
   
  }


  @action
  Future responderQuestion() async {
    questionAnswered = true;
    return selectedRadio;
  }

  /*
  * QUESTION ITENS
  */
   @observable
  String selectedRadio;

  @observable
  bool questionAnswered = false;

  @action
  setQuestionAnswered(bool value) => questionAnswered = value;

  @action
  void setSelectedRadio(value) => selectedRadio = value;

  /*
  * END QUESTION ITENS
  */


}
