
import 'package:eusereiaprovado/app/modules/questions/models/question_model.dart';
import 'package:eusereiaprovado/app/modules/questions/repository/question_repository.dart';
import 'package:mobx/mobx.dart';

part 'questions_controller.g.dart';

class QuestionsController = _QuestionsControllerBase with _$QuestionsController;

abstract class _QuestionsControllerBase with Store {

  final QuestionRepository questionRepository;

 @observable
  String textEnun = 'carregando';


  @observable
  List<QuestionApiModel> questions;

  _QuestionsControllerBase(this.questionRepository);

  @action
  void setQuestionList<QuestionApiModel>(value) => questions = value; 

  @action
  Future getQuestionfromRepo() async{
    setQuestionList(await questionRepository.fetchQuestions());  
  }


}
