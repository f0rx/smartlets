import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:smartlets/features/shared/domain/entities/user/auth_provider.dart';
import 'package:smartlets/features/shared/shared.dart';

class AuthProviders extends FieldObject<KtList<AuthProvider>> {
  static const AuthProviders EMPTY = const AuthProviders._(Right(KtList.empty()));
  final Either<FieldObjectException<String>, KtList<AuthProvider>> value;

  factory AuthProviders(KtList<AuthProvider> input) {
    assert(input != null);
    return AuthProviders._(right(input));
  }

  const AuthProviders._([this.value]);
}
