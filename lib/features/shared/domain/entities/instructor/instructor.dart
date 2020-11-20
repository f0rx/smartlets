import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/shared/domain/entities/unique_id.dart';
import 'package:smartlets/features/shared/shared.dart';

part 'instructor.freezed.dart';

@freezed
@immutable
abstract class Instructor implements _$Instructor {
  const Instructor._();

  const factory Instructor({
    @nullable Roles role,
    @nullable UniqueId id,
    @nullable DisplayName displayName,
    @nullable EmailAddress email,
    @nullable Biography bio,
    @nullable Specialty specialty,
    @nullable bool isEmailVerified,
    @nullable Phone phone,
    @nullable String photoURL,
    @nullable DateTime createdAt,
    @nullable DateTime lastSeenAt,
  }) = _Instructor;

  Option<FieldObjectException<dynamic>> get failureOption {
    return email?.failureOrUnit
        ?.andThen(displayName?.failureOrUnit)
        ?.andThen(bio?.failureOrUnit)
        ?.andThen(specialty?.failureOrUnit)
        ?.andThen(phone?.failureOrUnit)
        ?.fold((f) => some(f), (_) => none());
  }
}
