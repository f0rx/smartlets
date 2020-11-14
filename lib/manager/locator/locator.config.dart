// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../features/auth/data/models/student/student_auth_impl.dart';
import '../../features/auth/data/repositories/firebase_auth_impl.dart';
import '../../features/auth/domain/core/auth.dart';
import '../../features/auth/presentation/manager/auth_bloc.dart';
import '../../features/auth/presentation/manager/auth_watcher/auth_watcher_cubit.dart';
import '../../features/auth/presentation/manager/student/student_auth_cubit.dart';
import '../../features/on_boarding/manager/on_boarding_cubit.dart';
import '../../features/parent/presentation/manager/credit_card/credit_card_cubit.dart';
import '../../features/parent/presentation/manager/parent_nav_cubit.dart';
import '../../features/student/presentation/manager/playback/playback_bloc.dart';
import '../../features/student/presentation/manager/student_nav_cubit.dart';
import '../theme/manager/theme_cubit.dart';
import 'modules/modules.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final modules = _$Modules();
  gh.factory<CreditCardCubit>(() => CreditCardCubit());
  gh.lazySingleton<DataConnectionChecker>(() => modules.connectionChecker);
  gh.lazySingleton<FacebookLogin>(() => modules.facebookLogin);
  final firebaseApp = await modules.firebaseApp;
  gh.factory<FirebaseApp>(() => firebaseApp);
  gh.lazySingleton<FirebaseAuth>(() => modules.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => modules.firestore);
  gh.lazySingleton<FirebaseFunctions>(() => modules.functions);
  gh.lazySingleton<GoogleSignIn>(() => modules.googleSignIn);
  gh.factory<OnBoardingCubit>(
      () => OnBoardingCubit(get<DataConnectionChecker>()));
  gh.factory<ParentNavCubit>(() => ParentNavCubit());
  gh.factory<PlaybackBloc>(() => PlaybackBloc());
  gh.lazySingleton<StudentAuthFacade>(
      () => StudentAuthImpl(get<FirebaseFirestore>()));
  gh.factory<StudentNavCubit>(() => StudentNavCubit());
  gh.factory<ThemeCubit>(() => ThemeCubit());
  gh.lazySingleton<AuthFacade>(() => FirebaseAuthImpl.instance(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<FacebookLogin>(),
        get<DataConnectionChecker>(),
      ));
  gh.factory<AuthWatcherCubit>(() => AuthWatcherCubit(get<AuthFacade>()));
  gh.factory<StudentAuthCubit>(
      () => StudentAuthCubit(get<StudentAuthFacade>()));
  gh.factory<AuthBloc>(
      () => AuthBloc(get<AuthFacade>(), get<FirebaseFunctions>()));
  return get;
}

class _$Modules extends Modules {}
