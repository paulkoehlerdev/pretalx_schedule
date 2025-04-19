// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

import 'review.dart';

part 'reviews.g.dart';

@JsonSerializable()
class Reviews {
  const Reviews({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });
  
  factory Reviews.fromJson(Map<String, Object?> json) => _$ReviewsFromJson(json);
  
  final int count;
  final String? next;
  final String? previous;
  final List<Review> results;

  Map<String, Object?> toJson() => _$ReviewsToJson(this);
}
