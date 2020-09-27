import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/presentation/manager/auth_bloc.dart';
import 'package:smartlets/features/auth/presentation/widgets/oauth_widget.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

part 'login_form.dart';

class LoginScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (_) => getIt<AuthBloc>(),
      child: BlocBuilder<AuthBloc, AuthState>(
        buildWhen: (prev, current) => prev.isLoading != current.isLoading,
        builder: (context, _) => PortalEntry(
          visible: context.bloc<AuthBloc>().state.isLoading,
          portal: App.circularLoadingOverlay,
          child: this,
        ),
      ),
    );
  }

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
            child: SingleChildScrollView(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              scrollDirection: Axis.vertical,
              controller: ScrollController(),
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: App.width * 0.04),
              child: Column(
                children: [
                  VerticalSpace(height: App.height * 0.1),
                  //
                  AutoSizeText(
                    "Welcome Back!",
                    style: TextStyle(fontWeight: FontWeight.w600),
                    minFontSize: 24,
                  ),
                  //
                  VerticalSpace(height: App.height * 0.015),
                  //
                  GestureDetector(
                    onTap: () => navigator.pop(),
                    child: AutoSizeText.rich(
                      TextSpan(children: [
                        TextSpan(text: "Don't have an account?"),
                        TextSpan(text: " "),
                        TextSpan(text: "Sign Up.", style: TextStyle(color: Theme.of(context).accentColor)),
                      ]),
                      minFontSize: 16,
                    ),
                  ),
                  //
                  VerticalSpace(height: App.height * 0.04),
                  //
                  OAuthWidget(),
                  //
                  VerticalSpace(height: App.height * 0.02),
                  //
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: App.width * 0.12),
                    child: Row(
                      children: [
                        Expanded(child: Divider(thickness: 1.2)),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: AutoSizeText("OR", minFontSize: 13.0),
                        ),
                        Expanded(child: Divider(thickness: 1.2)),
                      ],
                    ),
                  ),
                  //
                  VerticalSpace(height: App.height * 0.04),
                  //
                  LoginForm(),
                  //
                  VerticalSpace(height: App.height * 0.05),
                  //
                  RaisedButton(
                    onPressed: () => BlocProvider.of<AuthBloc>(context).add(AuthEvent.signInWithEmailAndPassword()),
                    child: HorizontalSpace(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: AutoSizeText(
                            "Login",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                            minFontSize: 15.0,
                          ),
                        ),
                      ),
                      width: double.infinity,
                    ),
                    elevation: 0.8,
                    highlightElevation: 1.0,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  //
                  VerticalSpace(height: App.height * 0.15),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
