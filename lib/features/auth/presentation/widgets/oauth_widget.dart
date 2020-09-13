import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/auth/presentation/manager/auth_bloc.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/horizontal_spacer.dart';

class OAuthWidget extends StatelessWidget {
  final bool google;
  final bool facebook;
  final bool twitter;

  const OAuthWidget({
    Key key,
    this.google = true,
    this.facebook = true,
    this.twitter = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(
          visible: google,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Material(
                    color: Theme.of(context).primaryColor,
                    elevation: 12.0,
                    clipBehavior: Clip.hardEdge,
                    shape: CircleBorder(),
                    child: InkWell(
                      onTap: () => BlocProvider.of<AuthBloc>(context).add(AuthEvent.signInWithGoogle()),
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        child: AppAssets.google,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                      ),
                    ),
                  ),
                ),
              ),
              //
              HorizontalSpace(width: 25.0),
            ],
          ),
        ),
        //
        Visibility(
          visible: facebook,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Material(
                color: Theme.of(context).primaryColor,
                elevation: 12.0,
                clipBehavior: Clip.hardEdge,
                shape: CircleBorder(),
                child: InkWell(
                  onTap: () => BlocProvider.of<AuthBloc>(context).add(AuthEvent.signInWithFacebook()),
                  child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: AppAssets.facebook,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
