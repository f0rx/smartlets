import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/features/student/domain/domain.dart';

part 'course.freezed.dart';

@freezed
@immutable
abstract class Course implements _$Course {
  @protected
  const Course._();

  const factory Course({
    @required UniqueId id,
    @required UniqueId categoryId,
    @required CourseTitle title,
    @required CourseDescription description,
    @required CourseRating rating,
    @required Topics topics,
    @required User instructor,
    @required About about,
    @required DateTime createdAt,
    @nullable DateTime updatedAt,
  }) = _Course;

  int get topicsCount => topics.length;

  int get lessons => topics.lessonsCount;

  Duration get duration => topics.duration;

  static List<Course> get courses => [
        Course(
          id: UniqueId(),
          categoryId: UniqueId(),
          title: CourseTitle(input: "Web Design - The Complete Guide 2020"),
          description: CourseDescription(input: "null"),
          rating: CourseRating(input: 2.4),
          topics: Topics.list,
          instructor: User.guest(),
          about: About.dflt,
          createdAt: DateTime.now(),
        ),
        //
        Course(
          id: UniqueId(),
          categoryId: UniqueId(),
          title: CourseTitle(input: "Fundamentals of Brand Identity Design"),
          description: CourseDescription(input: "null"),
          rating: CourseRating(input: 4.5),
          topics: Topics.list,
          instructor: User.guest(),
          about: About.dflt,
          createdAt: DateTime.now(),
        ),
        //
        Course(
          id: UniqueId(),
          categoryId: UniqueId(),
          title: CourseTitle(input: "The A-Z Of UI/UX Design"),
          description: CourseDescription(input: "null"),
          rating: CourseRating(input: 3.6),
          topics: Topics.list,
          instructor: User.guest(),
          about: About.dflt,
          createdAt: DateTime.now(),
        ),
      ];
}
