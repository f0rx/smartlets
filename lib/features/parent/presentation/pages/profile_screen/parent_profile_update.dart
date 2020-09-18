import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/presentation/manager/auth_bloc.dart';
import 'package:smartlets/features/shared/shared.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

part 'package:smartlets/features/parent/presentation/widgets/update_password_form.dart';
part 'package:smartlets/features/parent/presentation/widgets/update_profile_form.dart';

class UpdateParentProfilePage extends StatelessWidget with AutoRouteWrapper {
  final User user;

  const UpdateParentProfilePage(this.user, {Key key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => this;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: "Account",
        fontSize: 25.0,
      ),
      body: Center(
        child: SingleChildScrollView(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          scrollDirection: Axis.vertical,
          controller: ScrollController(),
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: App.width * 0.04),
          child: AutofillGroup(
            child: Column(
              children: [
                _UpdateProfileForm(user),
                //
                VerticalSpace(height: App.height * 0.04),
                //
                _ChangePasswordForm(user),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
