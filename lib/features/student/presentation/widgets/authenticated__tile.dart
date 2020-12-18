import 'package:auto_size_text/auto_size_text.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/auth/presentation/manager/student/student_auth_cubit.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class AuthenticatedProfileTile extends StatelessWidget {
  const AuthenticatedProfileTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<StudentAuthCubit, StudentAuthState>(
      listener: (context, state) => state.status?.fold(
        (failure) => Flushbar(
          duration: const Duration(seconds: 15),
          icon: failure.map(
            (_) => Icon(Icons.error, color: AppColors.errorRed),
            unknown: (_) => Icon(Icons.error, color: Colors.yellow),
          ),
          messageText: AutoSizeText(failure.message),
          borderRadius: 8,
          dismissDirection: FlushbarDismissDirection.HORIZONTAL,
          margin: EdgeInsets.all(8),
          flushbarPosition: FlushbarPosition.TOP,
          shouldIconPulse: true,
          backgroundColor: Theme.of(context).primaryColor,
        ).show(context),
        (r) => null,
      ),
      child: BlocBuilder<StudentAuthCubit, StudentAuthState>(
        builder: (context, state) => MyProfileListTile(domain: state.student),
      ),
    );
  }
}
