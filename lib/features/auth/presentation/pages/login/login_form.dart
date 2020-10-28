part of 'login_screen.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (prev, current) => prev.authStatus.isSome() && current.authStatus.isSome(),
      listener: (context, state) => state.authStatus.fold(
        () => null,
        (option) => option.fold(
          (failure) => Flushbar(
            duration: failure.maybeMap(
              (_) => const Duration(seconds: 5),
              accountAlreadyExists: (_) => const Duration(minutes: 2),
              orElse: () => const Duration(seconds: 5),
            ),
            icon: Icon(Icons.error, color: Colors.red),
            messageText: AutoSizeText(failure.message),
            borderRadius: 8,
            dismissDirection: FlushbarDismissDirection.HORIZONTAL,
            margin: EdgeInsets.all(8),
            flushbarPosition: FlushbarPosition.TOP,
            shouldIconPulse: true,
            backgroundColor: Theme.of(context).primaryColor,
            mainButton: failure.maybeMap(
              (_) => null,
              accountAlreadyExists: (_) => Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(8.0),
                child: AutoSizeText("OK", style: TextStyle(fontWeight: FontWeight.w600)),
              ),
              orElse: () => null,
            ),
            onTap: (info) => failure.maybeMap(
              (_) => null,
              accountAlreadyExists: (e) => AuthProvider.switchCase(
                e.provider.name,
                isGoogle: (name) => BlocProvider.of<AuthBloc>(context)
                  ..add(
                    AuthEvent.signInWithGoogle(e.credentials),
                  ),
                isFacebook: (name) => BlocProvider.of<AuthBloc>(context)
                  ..add(
                    AuthEvent.signInWithFacebook(e.credentials),
                  ),
                orElse: (name) => App.showAlertDialog(
                  context: context,
                  builder: (context) => ProviderAuthWidget(
                    error: e.message,
                    email: e.email,
                    provider: e.provider,
                    incoming: e.credentials,
                  ),
                ),
              ),
              orElse: () => null,
            ),
          ).show(context),
          (_) => null,
        ),
      ),
      builder: (context, _) {
        // ignore: close_sinks
        final bloc = context.bloc<AuthBloc>();

        return Form(
          autovalidateMode: bloc.state.validate ? AutovalidateMode.always : AutovalidateMode.disabled,
          child: AutofillGroup(
            onDisposeAction: AutofillContextAction.commit,
            child: Column(
              children: [
                TextFormField(
                  maxLines: 1,
                  enableSuggestions: true,
                  autocorrect: false,
                  cursorColor: App.theme.accentColor,
                  enableInteractiveSelection: true,
                  keyboardType: TextInputType.emailAddress,
                  textCapitalization: TextCapitalization.none,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Email address",
                    hintText: "name@email.com",
                  ),
                  autofillHints: [
                    AutofillHints.email,
                  ],
                  onChanged: (value) => bloc.add(AuthEvent.emailChanged(value)),
                  validator: (value) => bloc.state.emailAddress.value.fold((error) => error.message, (r) => null),
                  onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                ),
                //
                VerticalSpace(height: App.height * 0.013),
                //
                Stack(
                  children: [
                    TextFormField(
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
                        AutofillHints.newPassword,
                      ],
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "secret",
                        contentPadding: const EdgeInsets.only(left: 12.0, right: 45.0).copyWith(bottom: 30.0),
                      ),
                      onChanged: (value) => bloc.add(AuthEvent.passwordChanged(value, mode: FIELD_VALIDATION.BASIC)),
                      validator: (value) => bloc.state.password.value.fold((error) => error.message, (r) => null),
                      onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
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
                //
                VerticalSpace(height: App.height * 0.01),
                //
                GestureDetector(
                  onTap: () => navigator.pushForgotPasswordScreen(),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AutoSizeText(
                        "Forgot password?",
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: AppColors.accentColor.shade400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
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
