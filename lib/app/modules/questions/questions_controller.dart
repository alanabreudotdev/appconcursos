
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
   if(answerSelectedRadio != null){
     questionAnswered = true;
   }
    
    return answerSelectedRadio;
  }

  /*
  * QUESTION ITENS
  */

  //REPOSTA CORRETA DA QUESTAO
  @observable
  String answerCorrect;

  //RESPOSTA ESCOLHIDA PELO USUARIO
  @observable
  String answerSelectedRadio;

  //SE QUESTAO RESPONDIDA = TRUE
  @observable
  bool questionAnswered = false;

  //VERIFICA SE RESPOSTA DO USER É IGUAL A RESPOSTA DA QUESTAO
  @computed
  bool get checkAnswerResult => answerSelectedRadio == answerCorrect;

  //ACAO PARA DIZER QUE A QUESTAO FOI RESOLVIDA PELO USER
  @action
  setQuestionAnswered(bool value) => questionAnswered = value;

  //ACAO PARA SETAR O VALOR
  @action
  void setAnswerSelectedRadio(value) => answerSelectedRadio = value;

  /*
  * END QUESTION ITENS
  */


}
