import 'package:dio/dio.dart';
import 'package:eusereiaprovado/app/modules/questions/repository/question_repository.dart';
import 'package:eusereiaprovado/app/modules/questions/components/qst_answer/qst_answer_controller.dart';
import 'package:eusereiaprovado/app/modules/questions/components/qst_itens/qst_itens_controller.dart';
import 'package:eusereiaprovado/app/modules/questions/components/qst_enunciado_header/qst_enunciado_header_controller.dart';
import 'package:eusereiaprovado/app/modules/questions/components/qst_text_header/qst_text_header_controller.dart';
import 'package:eusereiaprovado/app/core/helpers.dart';
import 'package:eusereiaprovado/app/modules/questions/questions_filters/questions_filters_controller.dart';
import 'package:eusereiaprovado/app/modules/questions/questions_controller.dart';
import 'package:eusereiaprovado/app/modules/questions/questions_filters/questions_filters_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:eusereiaprovado/app/modules/questions/questions_page.dart';

class QuestionsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        
        Bind((i) => QstAnswerController()),
        Bind((i) => QstItensController()),
        Bind((i) => QstEnunciadoHeaderController()),
        Bind((i) => QstTextHeaderController()),
        Bind((i) => QuestionsFiltersController()),
        Bind((i) => QuestionsController(i.get())),
        Bind((i) => QuestionRepository(i.get())),
        Bind((i) => Dio()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => QuestionsPage(),
            transition: Helpers().transitions),
        Router('/questions-filters',
            child: (_, args) => QuestionsFiltersPage(),
            transition: Helpers().transitions)
      ];

  static Inject get to => Inject<QuestionsModule>.of();
}
