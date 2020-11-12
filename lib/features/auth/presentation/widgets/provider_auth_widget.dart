import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/domain/entities/fields/exports.dart';
import 'package:smartlets/features/auth/presentation/manager/auth_bloc.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/platform_builder.dart';
import 'package:smartlets/widgets/widgets.dart';

class ProviderAuthWidget extends StatelessWidget {
  final String error;
  final EmailAddress email;
  final AuthProvider provider;
  final Object incoming;

  const ProviderAuthWidget({
    Key key,
    this.error,
    @required this.email,
    @required this.provider,
    @required this.incoming,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (_) => getIt<AuthBloc>(),
      child: PlatformBuilder(
        android: (context) => AlertDialog(
          scrollable: false,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 2.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          contentPadding: AuthProvider.switchCase(
            provider.name,
            isPassword: (_) => EdgeInsets.only(left: 20.0, right: 20.0, top: 12.0),
            orElse: (_) => EdgeInsets.zero,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AuthProvider.switchCase<Widget>(
                provider.name,
                isPassword: (_) => _PasswordBuilder(),
                isGoogle: (_) => _GoogleBuilder(incoming: incoming),
                isFacebook: (_) => _FacebookBuilder(incoming: incoming),
              ),
              VerticalSpace(height: App.height * 0.01),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, _) => Visibility(
                  visible: context.watch<AuthBloc>().state.isLoading,
                  child: LinearProgressIndicator(),
                ),
              ),
            ],
          ),
          actions: AuthProvider.switchCase<List<Widget>>(
            provider.name,
            isPassword: (_) => <Widget>[
              FlatButton(onPressed: () => navigator.pop(context), child: Text('Cancel')),
              HorizontalSpace(width: 20),
              Builder(
                builder: (context) => FlatButton(
                  onPressed: () => BlocProvider.of<AuthBloc>(context)
                    ..add(AuthEvent.emailChanged(email.getOrCrash))
                    ..add(AuthEvent.signInWithCredentials(incoming: incoming, provider: provider)),
                  child: Text('Continue'),
                ),
              ),
            ],
            orElse: (_) => null,
          ),
        ),
        ios: (context) => CupertinoAlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AuthProvider.switchCase<Widget>(
                provider.name,
                isPassword: (_) => _PasswordBuilder(),
                isGoogle: (_) => _GoogleBuilder(incoming: incoming),
                isFacebook: (_) => _FacebookBuilder(incoming: incoming),
              ),
              VerticalSpace(height: App.height * 0.01),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, _) => Visibility(
                  visible: context.watch<AuthBloc>().state.isLoading,
                  child: LinearProgressIndicator(),
                ),
              ),
            ],
          ),
          actions: AuthProvider.switchCase<List<Widget>>(
            provider.name,
            isPassword: (_) => <Widget>[
              FlatButton(onPressed: () => navigator.pop(context), child: Text('Cancel')),
              HorizontalSpace(width: 20),
              Builder(
                builder: (context) => FlatButton(
                  onPressed: () => BlocProvider.of<AuthBloc>(context)
                    ..add(AuthEvent.emailChanged(email.getOrCrash))
                    ..add(AuthEvent.signInWithCredentials(incoming: incoming, provider: provider)),
                  child: Text('Continue'),
                ),
              ),
            ],
            orElse: (_) => null,
          ),
        ),
      ),
    );
  }
}

class _PasswordBuilder extends StatelessWidget {
  const _PasswordBuilder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (prev, current) => prev.authStatus != current.authStatus,
      listener: (_, state) => state.authStatus.fold(
        () => null,
        (authStatus) => authStatus.fold(
          (failure) => Fluttertoast.showToast(
            msg: failure.map(
              (e) => e.message,
              unExpectedFailure: (e) => e.message,
              accountAlreadyExists: (e) => e.message,
            ),
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue,
            textColor: Colors.white,
            fontSize: 16.0,
          ),
          (_) => null,
        ),
      ),
      builder: (context, _) {
        // ignore: close_sinks
        final bloc = context.watch<AuthBloc>();

        return VerticalSpace(
          height: App.height * 0.1,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                AutofillGroup(
                  onDisposeAction: AutofillContextAction.commit,
                  child: TextFormField(
                    maxLines: 1,
                    enableSuggestions: false,
                    autocorrect: false,
                    cursorColor: App.theme.accentColor,
                    enableInteractiveSelection: true,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: bloc.state.passwordHidden,
                    textCapitalization: TextCapitalization.none,
                    textInputAction: TextInputAction.done,
                    autofillHints: [
                      AutofillHints.password,
                    ],
                    decoration: InputDecoration(
                      labelText: "Your Password",
                      hintText: "secret",
                      contentPadding: const EdgeInsets.only(left: 12.0, right: 45.0).copyWith(bottom: 30.0),
                    ),
                    onChanged: (value) => bloc.add(AuthEvent.passwordChanged(value, mode: FIELD_VALIDATION.BASIC)),
                    validator: (value) => bloc.state.password.value.fold((error) => error.message, (r) => null),
                    onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                  ),
                ),
                //
                Positioned(
                  top: 0,
                  right: 0,
                  child: Material(
                    color: Colors.transparent,
                    shape: CircleBorder(),
                    clipBehavior: Clip.hardEdge,
                    child: IconButton(
                      icon: Icon(bloc.state.passwordHidden ? AppIcons.eyelash_closed : AppIcons.eyelash_open),
                      onPressed: () => bloc.add(AuthEvent.toggledPasswordVisibility()),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _GoogleBuilder extends StatelessWidget {
  final Object incoming;

  const _GoogleBuilder({Key key, @required this.incoming}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (prev, current) => prev.authStatus != current.authStatus,
      listener: (_, state) => state.authStatus.fold(
        () => null,
        (authStatus) => authStatus.fold(
          (failure) => Fluttertoast.showToast(
            msg: failure.map(
              (e) => e.message,
              unExpectedFailure: (e) => e.message,
              accountAlreadyExists: (e) => e.message,
            ),
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue,
            textColor: Colors.white,
            fontSize: 16.0,
          ),
          (_) => null,
        ),
      ),
      builder: (context, _) => VerticalSpace(
        height: App.height * 0.1,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Material(
            elevation: 1.5,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: const Color(0xFF4285F4),
            type: MaterialType.button,
            borderRadius: BorderRadius.circular(3.0),
            animationDuration: Duration(seconds: 5),
            child: Ink(
              child: InkWell(
                onTap: () => BlocProvider.of<AuthBloc>(context)..add(AuthEvent.signInWithGoogle(incoming)),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.all(1.5),
                      padding: const EdgeInsets.all(9.0),
                      child: AppAssets.google,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(9.0),
                        child: AutoSizeText(
                          'Sign in with Google',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                          minFontSize: 16.0,
                          wrapWords: false,
                          softWrap: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FacebookBuilder extends StatelessWidget {
  final Object incoming;

  const _FacebookBuilder({Key key, @required this.incoming}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (prev, current) => prev.authStatus != current.authStatus,
      listener: (_, state) => state.authStatus.fold(
        () => null,
        (authStatus) => authStatus.fold(
          (failure) => Fluttertoast.showToast(
            msg: failure.map(
              (e) => e.message,
              unExpectedFailure: (e) => e.message,
              accountAlreadyExists: (e) => e.message,
            ),
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue,
            textColor: Colors.white,
            fontSize: 16.0,
          ),
          (_) => null,
        ),
      ),
      builder: (context, _) => VerticalSpace(
        height: App.height * 0.1,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Material(
            elevation: 1.5,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: AppColors.fbButton,
            type: MaterialType.button,
            borderRadius: BorderRadius.circular(3.0),
            animationDuration: Duration(seconds: 5),
            child: Ink(
              child: InkWell(
                onTap: () => BlocProvider.of<AuthBloc>(context)..add(AuthEvent.signInWithFacebook(incoming)),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      color: Colors.transparent,
                      margin: const EdgeInsets.all(1.5),
                      padding: const EdgeInsets.all(9.0),
                      child: SvgPicture.asset(
                        '${AppAssets.AUTH_SVG_DIR}/facebook.svg',
                        height: 23,
                        width: 23,
                        fit: BoxFit.contain,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: AutoSizeText(
                        'Continue with Facebook',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        minFontSize: 15.0,
                        wrapWords: false,
                        softWrap: false,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
