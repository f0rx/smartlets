import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart' hide nullable;
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/features/student/domain/domain.dart';
import 'package:smartlets/features/student/domain/entities/course_category/category_icon.dart';
import 'package:smartlets/utils/utils.dart';

part 'course_category.freezed.dart';

@freezed
@immutable
abstract class CourseCategory with _$CourseCategory {
  @protected
  const CourseCategory._();

  const factory CourseCategory({
    @required UniqueId id,
    @required CategoryTitle title,
    @required CategoryDescription description,
    @required ColorGradient gradient,
    @required CategoryIcon icon,
    @required DateTime createdAt,
    @nullable DateTime updatedAt,
  }) = _CourseCategory;

  static List<CourseCategory> get list => <CourseCategory>[
        CourseCategory(
          id: UniqueId(),
          title: CategoryTitle(input: "Design"),
          description: CategoryDescription(input: "Best Design Courses"),
          gradient: ColorGradient(
            input: listOf(
              AppColors.fromHex("#FFB199"),
              AppColors.fromHex("#ff809f"),
            ),
          ),
          icon: CategoryIcon(name: "palette"),
          createdAt: DateTime.now(),
        ),
        CourseCategory(
          id: UniqueId(),
          title: CategoryTitle(input: "Coding"),
          description: CategoryDescription(input: "Become a Software Specialist"),
          gradient: ColorGradient(
            input: listOf(
              AppColors.fromHex("#3DC24B"),
              AppColors.fromHex("#D6FF94"),
            ),
          ),
          icon: CategoryIcon(name: "coding_1"),
          createdAt: DateTime.now(),
        ),
        CourseCategory(
          id: UniqueId(),
          title: CategoryTitle(input: "Internet Of Things"),
          description: CategoryDescription(input: "Networking. Deep understanding."),
          gradient: ColorGradient(
            input: listOf(
              AppColors.fromHex("#4481EB"),
              AppColors.fromHex("#04BEFE"),
            ),
          ),
          icon: CategoryIcon(name: "cloud-computing"),
          createdAt: DateTime.now(),
        ),
        CourseCategory(
          id: UniqueId(),
          title: CategoryTitle(input: "Internet Of Things"),
          description: CategoryDescription(input: "Become an expert."),
          gradient: ColorGradient(
            input: listOf(
              AppColors.fromHex("#FECD00"),
              AppColors.fromHex("#FF8845"),
            ),
          ),
          icon: CategoryIcon(name: "cloud-computing"),
          createdAt: DateTime.now(),
        ),
      ];
}
