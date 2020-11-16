import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/on_boarding/manager/on_boarding_cubit.dart';
import 'package:smartlets/features/on_boarding/models/roles.dart';
import 'package:smartlets/features/parent/data/export.dart';
import 'package:smartlets/features/student/data/exports.dart';
import 'package:smartlets/utils/assets.dart';
import 'package:smartlets/utils/utils.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@Injectable()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthFacade _auth;
  final FirebaseFunctions _functions;

  AuthBloc(this._auth, this._functions) : super(AuthState.init());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield state.copyWith(isLoading: true, authStatus: none());

    yield* event.map(
      displayNameChanged: (e) async* {
        yield state.copyWith(displayName: DisplayName(e.input));
      },
      emailChanged: (e) async* {
        yield state.copyWith(emailAddress: EmailAddress(e.email));
      },
      guardianEmailChanged: (e) async* {
        yield state.copyWith(guardianEmailAddress: EmailAddress(e.email));
      },
      genderChanged: (e) async* {
        yield state.copyWith(gender: Gender(e.gender));
      },
      passwordChanged: (e) async* {
        yield state.copyWith(password: Password(e.password, mode: e.mode));
      },
      newPasswordChanged: (e) async* {
        yield state.copyWith(newPassword: Password(e.newPassword, mode: e.mode));
      },
      toggledPasswordVisibility: (e) async* {
        yield state.copyWith(passwordHidden: !state.passwordHidden);
      },
      toggledSnackBarVisibility: (e) async* {
        yield state.copyWith(snackbarDismissed: e.value ?? !state.snackbarDismissed);
      },
      signInWithEmailAndPassword: (_) async* {
        yield* _mapSignInWithEmailAndPassword(_);
      },
      createAccountWithEmailAndPassword: (_) async* {
        yield* _mapCreateAccountWithEmailAndPassword(_);
        // await _auth.updateProfile(name: state.displayName, photoURL: AppAssets.onlineAnonymous);
      },
      createInstructorAccount: (_) async* {
        yield* _mapCreateInstructorAccount(_);
      },
      createStudentAccount: (_) async* {
        yield* _mapCreateStudentAccount(_);
      },
      updateProfile: (_) async* {
        yield* _mapUpdateProfile(_);
      },
      emailPasswordReset: (e) async* {
        yield* _mapSendPasswordResetEmail(e);
      },
      updatePassword: (_) async* {
        yield* _mapUpdatePassword(_);
      },
      signInWithGoogle: (e) async* {
        final result = await _auth.googleAuthentication(e.incoming);
        yield state.copyWith(authStatus: some(result), snackbarDismissed: false);
      },
      signInWithFacebook: (e) async* {
        final result = await _auth.facebookAuthentication(e.incoming);
        yield state.copyWith(authStatus: some(result), snackbarDismissed: false);
      },
      signInWithCredentials: (e) async* {
        yield* _mapSignInWithCred(e);
      },
      signOut: (e) async* {
        await _auth.signOut();
      },
      signInWithTwitter: (e) async* {
        final result = await _auth.twitterAuthentication(e.incoming);
        yield state.copyWith(authStatus: some(result), snackbarDismissed: false);
      },
    );

    yield state.copyWith(isLoading: false);
  }

  Stream<AuthState> _mapSignInWithEmailAndPassword(
    _SignInWithEmailAndPassword e,
  ) async* {
    EmailAddress email = state.emailAddress;
    Password password = state.password;
    Either<AuthFailure, Unit> failureOrUnit;

    if (email.isValid && password.isValid)
      failureOrUnit = await _auth.login(
        emailAddress: email,
        password: password,
      );

    yield state.copyWith(
      validate: true,
      authStatus: optionOf(failureOrUnit),
      snackbarDismissed: false,
    );
  }

  Stream<AuthState> _mapCreateAccountWithEmailAndPassword(
    _CreateAccountWithEmailAndPassword e,
  ) async* {
    DisplayName name = state.displayName;
    EmailAddress email = state.emailAddress;
    Password password = state.password;
    Either<AuthFailure, Unit> failureOrUnit;

    if (name.isValid && email.isValid && password.isValid) {
      failureOrUnit = await _auth.createAccount(
        emailAddress: email,
        password: password,
      );
    }
    // Update user profile
    await _auth.updateProfile(name: state.displayName, photoURL: AppAssets.onlineAnonymous);

    await BlocProvider.of<OnBoardingCubit>(App.context).state?.role?.fold(
      parent: () async {
        final user = _auth.currentUser.getOrElse(() => null);
        try {
          await _functions.httpsCallable('calls-onUserCreated-onUserCreatedCallable').call(GuardianDTO.fromDomain(Guardian(
                displayName: DisplayName(user?.displayName ?? ''),
                childrenIds: ImmutableIds.EMPTY,
              )).toJson());
        } catch (_) {}
      },
      student: () async {
        final user = _auth.currentUser.getOrElse(() => null);
        try {
          await _functions.httpsCallable('calls-onUserCreated-onUserCreatedCallable').call(StudentDTO.fromDomain(Student(
                displayName: DisplayName(user?.displayName ?? ''),
                gender: Gender.DEFAULT,
                guardianEmail: EmailAddress.DEFAULT,
                guardianPhone: Phone.DEFAULT,
                courseIds: ImmutableIds.EMPTY,
                awardIds: ImmutableIds.EMPTY,
                projectIds: ImmutableIds.EMPTY,
              )).toJson());
        } catch (_) {}
      },
    );

    yield state.copyWith(
      validate: true,
      authStatus: optionOf(failureOrUnit),
      snackbarDismissed: false,
    );
  }

  Stream<AuthState> _mapSignInWithCred(_SignInWithCredentials e) async* {
    EmailAddress email = state.emailAddress;
    Password password = state.password;
    Either<AuthFailure, Unit> failureOrUnit;

    if (e.provider == null) {
      // Perform a normal Sign In with credentials
      failureOrUnit = await _auth.signInWithCredentials(e.credential);
    }

    if (e.provider != null)
      failureOrUnit = await AuthProvider.switchCase<FutureOr<Either<AuthFailure, Unit>>>(
        e.provider.name,
        isPassword: (name) async {
          try {
            final cred = EmailAuthProvider.credential(email: email.getOrCrash, password: password.getOrCrash);
            return await _auth.signInWithCredentials(cred, e.incoming);
          } on AuthFailure catch (e) {
            return left(e);
          }
        },
      );

    yield state.copyWith(
      validate: true,
      authStatus: optionOf(failureOrUnit),
      snackbarDismissed: false,
    );
  }

  Stream<AuthState> _mapSendPasswordResetEmail(_EmailPasswordReset e) async* {
    EmailAddress email = state.emailAddress;
    Either<AuthFailure, Unit> failureOrUnit;

    if (email.isValid) failureOrUnit = await _auth.sendPasswordResetEmail(email);

    yield state.copyWith(
      validate: true,
      authStatus: optionOf(failureOrUnit),
      snackbarDismissed: false,
    );
  }

  Stream<AuthState> _mapUpdateProfile(_UpdateProfile e) async* {
    DisplayName name = state.displayName;
    EmailAddress email = state.emailAddress;
    Either<AuthFailure, Unit> failureOrUnit;

    if (name.isValid && email.isValid)
      failureOrUnit = await _auth.updateProfile(
        name: name,
        email: email,
        photoURL: null,
      );

    yield state.copyWith(
      validate: true,
      authStatus: optionOf(failureOrUnit),
      snackbarDismissed: false,
    );
  }

  Stream<AuthState> _mapUpdatePassword(_UpdatePassword e) async* {
    Password _oldPass = state.password;
    Password _newPass = state.newPassword;
    Either<AuthFailure, Unit> failureOrUnit;

    if (_oldPass.isValid && _newPass.isValid)
      failureOrUnit = await _auth.changePassword(oldPassword: _oldPass, newPassword: _newPass);

    yield state.copyWith(
      validate: true,
      authStatus: optionOf(failureOrUnit),
      snackbarDismissed: false,
    );
  }

  Stream<AuthState> _mapCreateStudentAccount(_CreateStudentAccount e) async* {
    yield state.copyWith(
      validate: true,
      authStatus: some(right(unit)),
      snackbarDismissed: false,
    );
  }

  Stream<AuthState> _mapCreateInstructorAccount(_CreateInstructorAccount e) async* {}
}
