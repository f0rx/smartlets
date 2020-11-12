import 'package:async/async.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/auth/presentation/manager/blocs.dart';
import 'package:smartlets/features/on_boarding/manager/on_boarding_cubit.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final AsyncMemoizer<Option<User>> _memoizer = AsyncMemoizer();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Option<User>>(
      future: this._memoizer.runOnce(() => Future.delayed(
            env.splashDuration,
            () => getIt<AuthFacade>().currentUser,
          )),
      builder: (_, snapshot) {
        var child = Scaffold(
          backgroundColor: Theme.of(context).accentColor,
          body: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            children: [
              Positioned(
                top: App.height * 0.45,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: AutoSizeText(
                    AppStrings.appName,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    minFontSize: 40,
                  ),
                ),
              ),
              Positioned(
                bottom: App.height * 0.02,
                child: CircularProgressBar.adaptive(
                  width: App.width * 0.09,
                  height: App.width * 0.09,
                  background: Colors.white,
                  strokeWidth: 2.5,
                ),
              ),
            ],
          ),
        );

        switch (snapshot.connectionState) {
          case ConnectionState.done:
            return BlocListener<OnBoardingCubit, OnBoardingState>(
              listenWhen: (p, c) => !c.subscription.isNull,
              listener: (C, _) {
                getIt<AuthFacade>().onAuthStateChanged?.listen((option) => option?.fold(
                      () => navigator.pushAndRemoveUntil(Routes.onBoardingScreen, (route) => false),
                      // Using this screens' context is wrong cos it will be disposed on navigation; hence the use of App.context
                      (user) => BlocProvider.of<OnBoardingCubit>(App.context).state?.subscription?.fold(
                            parent: () => navigator.pushAndRemoveUntil(Routes.parentRootScreen, (route) => false),
                            student: () {
                              var plusCreated = user.createdAt.add(Duration(seconds: 20));
                              var difference = plusCreated.difference(DateTime.now());
                              if (difference.inSeconds > 0)
                                getIt<StudentAuthCubit>().update(Student(
                                  displayName: !user.displayName.isNullOrBlank ? DisplayName(user.displayName) : null,
                                  gender: Gender.DEFAULT,
                                  guardianEmail: EmailAddress.DEFAULT,
                                  guardianPhone: Phone.DEFAULT,
                                  courseIds: ImmutableIds.EMPTY,
                                  awardIds: ImmutableIds.EMPTY,
                                  projectIds: ImmutableIds.EMPTY,
                                ));
                              return navigator.pushAndRemoveUntil(Routes.studentRootScreen, (route) => false);
                            },
                          ),
                    ));
              },
              child: child,
            );
          case ConnectionState.none:
          case ConnectionState.waiting:
          case ConnectionState.active:
          default:
            return child;
        }
      },
    );
  }
}
