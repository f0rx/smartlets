import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/on_boarding/manager/on_boarding_cubit.dart';
import 'package:smartlets/features/on_boarding/models/roles.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/custom_list_tile.dart';
import 'package:smartlets/widgets/vertical_spacer.dart';
import 'package:smartlets/widgets/widgets.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppAssets.doodle,
          //
          Positioned(
            child: Container(color: App.backgroundOverlayColor),
          ),
          //
          Center(
            child: Column(
              children: [
                VerticalSpace(height: App.height * 0.15),
                //
                AutoSizeText(
                  AppStrings.appName,
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.w600,
                  ),
                  minFontSize: 30,
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
                //
                VerticalSpace(height: App.height * 0.02),
                //
                AutoSizeText(
                  "Welcome to smartlets\n"
                  "e-learning platform. Let’s learn.",
                  minFontSize: 16,
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
                //
                VerticalSpace(height: App.height * 0.05),
                //
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.width * 0.06),
                  child: BlocListener<OnBoardingCubit, OnBoardingState>(
                    listenWhen: (prev, current) => current.shouldListen,
                    listener: (context, state) {
                      if (!state.isLoading) if (App.currentRoute != Routes.loginScreen) navigator.pushSignupScreen();
                    },
                    child: Column(
                      children: [
                        CustomListTile<Roles>(
                          title: "I'm a Parent",
                          value: Roles.parent,
                          onTap: () => BlocProvider.of<OnBoardingCubit>(context).subscribeAParent(),
                        ),
                        //
                        VerticalSpace(height: App.height * 0.03),
                        //
                        CustomListTile<Roles>(
                          title: "I'm a Student",
                          value: Roles.student,
                          onTap: () => BlocProvider.of<OnBoardingCubit>(context).subscribeAStudent(),
                        ),
                      ],
                    ),
                  ),
                ),
                //
                VerticalSpace(height: App.height * 0.3),
                //
                BlocBuilder<OnBoardingCubit, OnBoardingState>(
                  builder: (context, state) => Visibility(
                    visible: state.isLoading,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: CircularProgressBar.adaptive(
                        width: App.width * 0.08,
                        height: App.width * 0.08,
                        strokeWidth: 3.5,
                        radius: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
