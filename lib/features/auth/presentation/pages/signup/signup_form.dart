part of 'signup_screen.dart';

class SignupForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (prev, current) => prev.authStatus.isSome() && current.authStatus.isSome(),
      listener: (context, state) => state.authStatus.fold(
        () => null,
        (option) => option.fold(
          (failure) => Flushbar(
            duration: const Duration(seconds: 5),
            icon: Icon(Icons.error, color: Colors.red),
            messageText: AutoSizeText(failure.message),
            borderRadius: 8,
            dismissDirection: FlushbarDismissDirection.HORIZONTAL,
            margin: EdgeInsets.all(8),
            flushbarPosition: FlushbarPosition.TOP,
            shouldIconPulse: true,
            backgroundColor: Theme.of(context).primaryColor,
          ).show(context),
          (_) => null,
        ),
      ),
      builder: (context, _) {
        // ignore: close_sinks
        final bloc = context.bloc<AuthBloc>();

        return Form(
          autovalidate: bloc.state.validate,
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
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    hintText: "John Doe Jnr.",
                  ),
                  autofillHints: [
                    AutofillHints.name,
                    AutofillHints.givenName,
                    AutofillHints.middleName,
                    AutofillHints.nickname,
                    AutofillHints.familyName,
                  ],
                  onChanged: (value) => bloc.add(AuthEvent.displayNameChanged(value)),
                  validator: (value) => bloc.state.displayName.value.fold((error) => error.message, (r) => null),
                  onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                ),
                //
                VerticalSpace(height: App.height * 0.02),
                //
                context.bloc<OnBoardingCubit>().state.subscription.fold(
                      parent: () => SizedBox.shrink(),
                      student: () => Column(
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
                              labelText: "Parent's Email address",
                              hintText: "sponsor@email.com",
                            ),
                            autofillHints: [
                              AutofillHints.email,
                            ],
                            onChanged: (value) => bloc.add(AuthEvent.parentEmailChanged(value)),
                            validator: (value) => bloc.state.parentEmailAddress.value.fold((error) => error.message, (r) => null),
                            onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
                          ),
                          //
                          VerticalSpace(height: App.height * 0.02),
                        ],
                      ),
                    ),
                //
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
                VerticalSpace(height: App.height * 0.02),
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
                        contentPadding: const EdgeInsets.only(left: 12.0, right: 45.0).copyWith(top: 1.0, bottom: 30.0),
                      ),
                      onChanged: (value) => bloc.add(AuthEvent.passwordChanged(value)),
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
              ],
            ),
          ),
        );
      },
    );
  }
}
