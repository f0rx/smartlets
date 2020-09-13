import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/manager/router/export.dart';
import 'package:smartlets/utils/utils.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Option<User>>(
      future: Future.delayed(Duration(milliseconds: 2700), () => getIt<AuthFacade>().currentUser),
      builder: (_, snapshot) {
        getIt<AuthFacade>().onAuthStateChanged?.listen((option) => option?.fold(
              () => navigator.pushAndRemoveUntil(Routes.onBoardingScreen, (route) => false),
              (_) => navigator.pushAndRemoveUntil(Routes.parentRootScreen, (route) => false),
            ));

        return Scaffold(
          backgroundColor: Theme.of(context).accentColor,
          body: Stack(
            alignment: Alignment.center,
            overflow: Overflow.clip,
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
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
