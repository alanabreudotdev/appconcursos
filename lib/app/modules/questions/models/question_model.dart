import 'dart:convert';
import 'dart:io';

String questionApiModelToJson(QuestionApiModel data) => json.encode(data.toJson());

class QuestionApiModel {
  int id;
  int categoryId;
  String title;
  String questionType;
  Null thumbnail;
  int numberOfAnswer;
  String choiceA;
  String choiceB;
  String choiceC;
  String choiceD;
  Null choiceE;
  String answer;
  Null explanation;
  int status;
  String createdAt;
  String updatedAt;

  QuestionApiModel(
      {this.id,
      this.categoryId,
      this.title,
      this.questionType,
      this.thumbnail,
      this.numberOfAnswer,
      this.choiceA,
      this.choiceB,
      this.choiceC,
      this.choiceD,
      this.choiceE,
      this.answer,
      this.explanation,
      this.status,
      this.createdAt,
      this.updatedAt});

  factory QuestionApiModel.fromJson(Map<dynamic, dynamic> json) =>
      QuestionApiModel(
        id: json['id'],
        categoryId: json['category_id'],
        title: json['title'],
        questionType: json['question_type'],
        thumbnail: json['thumbnail'],
        numberOfAnswer: json['number_of_answer'],
        choiceA: json['choice_a'],
        choiceB: json['choice_b'],
        choiceC: json['choice_c'],
        choiceD: json['choice_d'],
        choiceE: json['choice_e'],
        answer: json['answer'],
        explanation: json['explanation'],
        status: json['status'],
        createdAt: json['created_at'],
        updatedAt: json['updated_at'],
      );

  Map<dynamic, dynamic> toJson() => {
        'id': id,
        'category_id': this.categoryId,
        'title': this.title,
        'question_type': this.questionType,
        'thumbnail': this.thumbnail,
        'number_of_answer': this.numberOfAnswer,
        'choice_a': this.choiceA,
        'choice_b': this.choiceB,
        'choice_c': this.choiceC,
        'choice_d': this.choiceD,
        'choice_e': this.choiceE,
        'answer': this.answer,
        'explanation': this.explanation,
        'status': this.status,
        'created_at': this.createdAt,
        'updated_at': this.updatedAt,
      };

  factory QuestionApiModel.fromJsonString(String str) =>
      QuestionApiModel.fromJson(json.decode(str));

  String toJsonString() => json.encode(toJson());

  static List<QuestionApiModel> fromJsonList(List list) {
    if (list == null) return null;
    return list
        .map<QuestionApiModel>((item) => QuestionApiModel.fromJson(item))
        .toList();
  }
}