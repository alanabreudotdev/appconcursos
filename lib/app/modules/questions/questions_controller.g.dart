// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QuestionsController on _QuestionsControllerBase, Store {
  final _$textEnunAtom = Atom(name: '_QuestionsControllerBase.textEnun');

  @override
  String get textEnun {
    _$textEnunAtom.reportRead();
    return super.textEnun;
  }

  @override
  set textEnun(String value) {
    _$textEnunAtom.reportWrite(value, super.textEnun, () {
      super.textEnun = value;
    });
  }

  final _$questionsAtom = Atom(name: '_QuestionsControllerBase.questions');

  @override
  List<QuestionApiModel> get questions {
    _$questionsAtom.reportRead();
    return super.questions;
  }

  @override
  set questions(List<QuestionApiModel> value) {
    _$questionsAtom.reportWrite(value, super.questions, () {
      super.questions = value;
    });
  }

  final _$getQuestionfromRepoAsyncAction =
      AsyncAction('_QuestionsControllerBase.getQuestionfromRepo');

  @override
  Future<dynamic> getQuestionfromRepo() {
    return _$getQuestionfromRepoAsyncAction
        .run(() => super.getQuestionfromRepo());
  }

  final _$_QuestionsControllerBaseActionController =
      ActionController(name: '_QuestionsControllerBase');

  @override
  void setQuestionList<QuestionApiModel>(dynamic value) {
    final _$actionInfo = _$_QuestionsControllerBaseActionController.startAction(
        name: '_QuestionsControllerBase.setQuestionList<QuestionApiModel>');
    try {
      return super.setQuestionList<QuestionApiModel>(value);
    } finally {
      _$_QuestionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
textEnun: ${textEnun},
questions: ${questions}
    ''';
  }
}
