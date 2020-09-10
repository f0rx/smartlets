// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'modules/modules.dart';
import '../theme/manager/theme_cubit.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final modules = _$Modules();
  gh.lazySingleton<DataConnectionChecker>(() => modules.connectionChecker);
  final firebaseApp = await modules.firebaseApp;
  gh.factory<FirebaseApp>(() => firebaseApp);
  gh.lazySingleton<FirebaseAuth>(() => modules.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => modules.firestore);
  gh.lazySingleton<GoogleSignIn>(() => modules.googleSignIn);
  gh.factory<ThemeCubit>(() => ThemeCubit());
  return get;
}

class _$Modules extends Modules {}
