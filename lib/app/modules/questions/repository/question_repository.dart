import 'package:eusereiaprovado/app/modules/questions/models/question_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

class QuestionRepository extends Disposable {
 final Dio client;

  QuestionRepository(this.client);

  Future fetchQuestions() async {
    final response =
        await client.get('https://www.appdoantigao.com.br/api/category/17/questions');
        return QuestionApiModel.fromJsonList(response.data);
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
