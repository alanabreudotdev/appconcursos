// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QuestionsController on _QuestionsControllerBase, Store {
  Computed<bool> _$checkAnswerResultComputed;

  @override
  bool get checkAnswerResult => (_$checkAnswerResultComputed ??= Computed<bool>(
          () => super.checkAnswerResult,
          name: '_QuestionsControllerBase.checkAnswerResult'))
      .value;

  final _$isLoadingAtom = Atom(name: '_QuestionsControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

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

  final _$answerCorrectAtom =
      Atom(name: '_QuestionsControllerBase.answerCorrect');

  @override
  String get answerCorrect {
    _$answerCorrectAtom.reportRead();
    return super.answerCorrect;
  }

  @override
  set answerCorrect(String value) {
    _$answerCorrectAtom.reportWrite(value, super.answerCorrect, () {
      super.answerCorrect = value;
    });
  }

  final _$answerSelectedRadioAtom =
      Atom(name: '_QuestionsControllerBase.answerSelectedRadio');

  @override
  String get answerSelectedRadio {
    _$answerSelectedRadioAtom.reportRead();
    return super.answerSelectedRadio;
  }

  @override
  set answerSelectedRadio(String value) {
    _$answerSelectedRadioAtom.reportWrite(value, super.answerSelectedRadio, () {
      super.answerSelectedRadio = value;
    });
  }

  final _$questionAnsweredAtom =
      Atom(name: '_QuestionsControllerBase.questionAnswered');

  @override
  bool get questionAnswered {
    _$questionAnsweredAtom.reportRead();
    return super.questionAnswered;
  }

  @override
  set questionAnswered(bool value) {
    _$questionAnsweredAtom.reportWrite(value, super.questionAnswered, () {
      super.questionAnswered = value;
    });
  }

  final _$getQuestionfromRepoAsyncAction =
      AsyncAction('_QuestionsControllerBase.getQuestionfromRepo');

  @override
  Future getQuestionfromRepo() {
    return _$getQuestionfromRepoAsyncAction
        .run(() => super.getQuestionfromRepo());
  }

  final _$responderQuestionAsyncAction =
      AsyncAction('_QuestionsControllerBase.responderQuestion');

  @override
  Future<dynamic> responderQuestion() {
    return _$responderQuestionAsyncAction.run(() => super.responderQuestion());
  }

  final _$_QuestionsControllerBaseActionController =
      ActionController(name: '_QuestionsControllerBase');

  @override
  void setIsLoading(bool value) {
    final _$actionInfo = _$_QuestionsControllerBaseActionController.startAction(
        name: '_QuestionsControllerBase.setIsLoading');
    try {
      return super.setIsLoading(value);
    } finally {
      _$_QuestionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setQuestionAnswered(bool value) {
    final _$actionInfo = _$_QuestionsControllerBaseActionController.startAction(
        name: '_QuestionsControllerBase.setQuestionAnswered');
    try {
      return super.setQuestionAnswered(value);
    } finally {
      _$_QuestionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAnswerSelectedRadio(dynamic value) {
    final _$actionInfo = _$_QuestionsControllerBaseActionController.startAction(
        name: '_QuestionsControllerBase.setAnswerSelectedRadio');
    try {
      return super.setAnswerSelectedRadio(value);
    } finally {
      _$_QuestionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
textEnun: ${textEnun},
questions: ${questions},
answerCorrect: ${answerCorrect},
answerSelectedRadio: ${answerSelectedRadio},
questionAnswered: ${questionAnswered},
checkAnswerResult: ${checkAnswerResult}
    ''';
  }
}
