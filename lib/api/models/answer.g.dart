// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Answer _$AnswerFromJson(Map<String, dynamic> json) => Answer(
      id: (json['id'] as num).toInt(),
      question: Question.fromJson(json['question'] as Map<String, dynamic>),
      answer: json['answer'] as String,
      answerFile: json['answer_file'] as String,
      submission: json['submission'] as String,
      review: (json['review'] as num).toInt(),
      person: json['person'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => Options2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnswerToJson(Answer instance) => <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'answer': instance.answer,
      'answer_file': instance.answerFile,
      'submission': instance.submission,
      'review': instance.review,
      'person': instance.person,
      'options': instance.options,
    };
