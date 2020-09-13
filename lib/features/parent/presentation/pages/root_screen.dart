import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/on_boarding/manager/on_boarding_cubit.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/vertical_spacer.dart';

class ParentRootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Hooray!!\n\nWelcome${getIt<AuthFacade>().currentUser.fold(
                      () => '',
                      (a) => ' ${a.displayName}',
                    )},\nand I guess you're a ${context.bloc<OnBoardingCubit>().state.subscription}.",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),
              VerticalSpace(height: App.height * 0.1),
              FlatButton(
                onPressed: () => getIt<AuthFacade>().signOut(),
                child: Text("Sign Out"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
