import 'package:bloc/bloc.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:smartlets/features/auth/data/repositories/user_auth_impl.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/on_boarding/manager/on_boarding_cubit.dart';
import 'package:smartlets/features/on_boarding/models/roles.dart';
import 'package:smartlets/features/parent/data/export.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/features/student/data/exports.dart';
import 'package:smartlets/utils/utils.dart';

part 'firebase_functions_cubit.freezed.dart';
part 'firebase_functions_state.dart';

@Singleton()
class FirebaseFunctionsCubit extends Cubit<FirebaseFunctionsState> {
  final AuthFacade _auth;
  final FirebaseFunctions _functions;
  final UserAuthImpl _userAuthImpl;
  User _user;

  FirebaseFunctionsCubit(this._auth, this._functions, this._userAuthImpl) : super(FirebaseFunctionsState.init());

  void get _fetchAuthenticatedUser => _user = _auth.currentUser.getOrElse(() => null);

  void createUserFirestoreData() async {
    // Fetch authenticated user
    _fetchAuthenticatedUser;

    emit(state.copyWith(isLoading: true));

    var _result = false;

    try {
      if (!(await _userAuthImpl.docExists))
        _result = (await _functions.httpsCallable(FirebaseFnConstants.CREATE_USER_RECORD_CALLABLE).call(
                UserDTO.fromDomain(_user).copyWith(updatedAt: null).toJson()
                  ..addAll({"lastSeenAt": _user.createdAt?.millisecondsSinceEpoch})))
            .data;
    } catch (_) {
      log.e("Exception caught in AUTH BLOC [${FirebaseFnConstants.CREATE_USER_RECORD_CALLABLE}] ==> $_");
    }

    await BlocProvider.of<OnBoardingCubit>(App.context).state?.role?.fold(
      parent: () async {
        try {
          if (_result) {
            await _functions.httpsCallable(FirebaseFnConstants.UPDATE_USER_RECORD_CALLABLE).call(GuardianDTO.fromDomain(Guardian(
                  role: Roles.parent,
                  displayName: _user.displayName,
                  childrenIds: ImmutableIds.EMPTY,
                )).copyWith(updatedAt: null).toJson());
          }
        } catch (_) {
          log.e("Exception caught in AUTH BLOC [${FirebaseFnConstants.UPDATE_USER_RECORD_CALLABLE}] ==> $_");
        }
      },
      student: () async {
        try {
          if (_result) {
            await _functions.httpsCallable(FirebaseFnConstants.UPDATE_USER_RECORD_CALLABLE).call(StudentDTO.fromDomain(Student(
                  role: Roles.student,
                  displayName: _user.displayName,
                  gender: Gender.DEFAULT,
                  guardianEmail: EmailAddress.DEFAULT,
                  guardianPhone: Phone.DEFAULT,
                  courseIds: ImmutableIds.EMPTY,
                  awardIds: ImmutableIds.EMPTY,
                  projectIds: ImmutableIds.EMPTY,
                )).copyWith(updatedAt: null).toJson());
          }
        } catch (_) {
          log.e("Exception caught in AUTH BLOC [${FirebaseFnConstants.UPDATE_USER_RECORD_CALLABLE}] ==> $_");
        }
      },
    );

    emit(state.copyWith(isLoading: false, result: _result));
  }
}
