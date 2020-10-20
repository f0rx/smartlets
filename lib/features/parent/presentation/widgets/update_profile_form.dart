part of 'package:smartlets/features/parent/presentation/pages/profile_screen/parent_profile_update.dart';

class _UpdateProfileForm extends StatelessWidget {
  final User user;

  const _UpdateProfileForm(this.user, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthBloc>()..add(AuthEvent.displayNameChanged(user?.displayName))..add(AuthEvent.emailChanged(user?.email)),
      child: BlocConsumer<AuthBloc, AuthState>(
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
        buildWhen: (prev, current) => prev.isLoading != current.isLoading,
        builder: (context, state) {
          return PortalEntry(
            visible: context.bloc<AuthBloc>().state.isLoading,
            portal: App.circularLoadingOverlay,
            child: __FormWidget(bloc: context.bloc<AuthBloc>(), user: user, key: key),
          );
        },
      ),
    );
  }
}

class __FormWidget extends StatelessWidget {
  __FormWidget({
    Key key,
    @required this.bloc,
    @required this.user,
  }) : super(key: key);

  final AuthBloc bloc;
  final User user;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: bloc.state.validate ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: AutoSizeText("Full Name", minFontSize: 15.0, style: TextStyle(fontWeight: FontWeight.w500)),
          ),
          TextFormField(
            maxLines: 1,
            enableSuggestions: true,
            autocorrect: false,
            initialValue: "${user.displayName}",
            cursorColor: Theme.of(context).accentColor,
            enableInteractiveSelection: true,
            keyboardType: TextInputType.text,
            textCapitalization: TextCapitalization.words,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(hintText: "John Doe Jnr."),
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: AutoSizeText("Email Address", minFontSize: 15.0, style: TextStyle(fontWeight: FontWeight.w500)),
          ),
          //
          TextFormField(
            maxLines: 1,
            enableSuggestions: true,
            autocorrect: false,
            initialValue: "${user.email}",
            cursorColor: Theme.of(context).accentColor,
            enableInteractiveSelection: true,
            keyboardType: TextInputType.emailAddress,
            textCapitalization: TextCapitalization.none,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(hintText: "name@email.com"),
            autofillHints: [AutofillHints.email],
            onChanged: (value) => bloc.add(AuthEvent.emailChanged(value)),
            validator: (value) => bloc.state.emailAddress.value.fold((error) => error.message, (r) => null),
            onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
          ),
          //
          VerticalSpace(height: App.height * 0.04),
          //
          MkButton(
            text: "Save",
            minFontSize: 17.0,
            style: TextStyle(fontWeight: FontWeight.w700),
            onPressed: () => bloc.add(AuthEvent.updateProfile()),
          ),
        ],
      ),
    );
  }
}
