import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';

abstract class AuthFacade with FirebaseDepMixin {
  Option<User> get currentUser;

  Stream<Option<User>> get onAuthStateChanged;

  Stream<Option<User>> get onUserChanges;

  Future<Either<AuthFailure, Unit>> login({@required EmailAddress emailAddress, @required Password password});

  Future<Either<AuthFailure, Unit>> createAccount({@required EmailAddress emailAddress, @required Password password});

  Future<Either<AuthFailure, Unit>> updateProfile({
    DisplayName name,
    EmailAddress email,
    String photoURL,
    bool inFirestore = true,
  });

  Future<Either<AuthFailure, Unit>> changePassword({
    Password oldPassword,
    Password newPassword,
  });

  Future<Either<AuthFailure, Unit>> googleAuthentication([Object pendingCredentials]);

  Future<Either<AuthFailure, Unit>> facebookAuthentication([Object pendingCredentials]);

  Future<Either<AuthFailure, Unit>> twitterAuthentication([Object pendingCredentials]);

  Future<Either<AuthFailure, Unit>> sendPasswordResetEmail(EmailAddress email);

  Future<Either<AuthFailure, Unit>> confirmPasswordReset({String code, Password newPassword});

  Future<void> signOut();
}
