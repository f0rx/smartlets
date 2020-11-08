import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/shared/shared.dart';

part 'student.freezed.dart';

@freezed
@immutable
abstract class Student implements _$Student {
  const Student._();

  const factory Student({
    @nullable UniqueId id,
    @required DisplayName displayName,
    @required EmailAddress email,
    @Default(EmailAddress.DEFAULT) EmailAddress guardianEmail,
    @nullable Gender gender,
    @Default(ImmutableIds.EMPTY) ImmutableIds courseIds,
    @Default(ImmutableIds.EMPTY) ImmutableIds projectIds,
    @Default(ImmutableIds.EMPTY) ImmutableIds awardIds,
    @Default(false) bool isEmailVerified,
    @Default(Phone.DEFAULT) Phone phone,
    @Default(Phone.DEFAULT) Phone guardianPhone,
    @Default('') String photoURL,
    @nullable @nullable DateTime createdAt,
    @nullable @nullable DateTime lastSeenAt,
    @nullable DateTime updatedAt,
  }) = _Student;

  Option<FieldObjectException<dynamic>> get failureOption {
    return email.failureOrUnit
        .andThen(displayName?.failureOrUnit)
        .andThen(guardianEmail?.failureOrUnit)
        .andThen(gender?.failureOrUnit)
        .andThen(courseIds?.failureOrUnit)
        .andThen(projectIds?.failureOrUnit)
        .andThen(awardIds?.failureOrUnit)
        .andThen(phone?.failureOrUnit)
        .andThen(guardianPhone?.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
