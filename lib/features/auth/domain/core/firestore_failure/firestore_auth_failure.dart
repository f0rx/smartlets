import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smartlets/features/shared/shared.dart';

part 'firestore_auth_failure.freezed.dart';

@freezed
@immutable
abstract class FirestoreAuthFailure implements _$FirestoreAuthFailure, Failure<String> {
  const FirestoreAuthFailure._();

  const factory FirestoreAuthFailure(String message) = _FirestoreAuthFailure;

  factory FirestoreAuthFailure.aborted(String message) => FirestoreAuthFailure(message);

  factory FirestoreAuthFailure.alreadyExists(String message) => FirestoreAuthFailure(message);

  factory FirestoreAuthFailure.ok(String message) => FirestoreAuthFailure(message);

  factory FirestoreAuthFailure.cancelled(String message) => FirestoreAuthFailure(message);

  factory FirestoreAuthFailure.notFound(String message) => FirestoreAuthFailure(message);

  factory FirestoreAuthFailure.invalidArguments(String message) => FirestoreAuthFailure(message);

  factory FirestoreAuthFailure.deadlineExceeded(String message) => FirestoreAuthFailure(message);

  factory FirestoreAuthFailure.dataLoss(String message) => FirestoreAuthFailure(message);

  factory FirestoreAuthFailure.outOfRange(String message) => FirestoreAuthFailure(message);

  factory FirestoreAuthFailure.insufficientPermissions(String message) => FirestoreAuthFailure(message);

  factory FirestoreAuthFailure.unAuthenticated(String message) => FirestoreAuthFailure(message);

  factory FirestoreAuthFailure.unAvailable(String message) => FirestoreAuthFailure(message);

  factory FirestoreAuthFailure.unImplemented(String message) => FirestoreAuthFailure(message);

  factory FirestoreAuthFailure.unknown({
    @required String message,
    String code,
  }) = _UnknownFirestoreAuthFailure;
}
