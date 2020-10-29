import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:smartlets/features/auth/domain/core/auth.dart';
import 'package:smartlets/features/auth/presentation/manager/auth_bloc.dart';
import 'package:smartlets/features/parent/domain/entities/entities.dart';
import 'package:smartlets/features/parent/presentation/widgets/parent_widgets.dart';
import 'package:smartlets/manager/locator/locator.dart';
import 'package:smartlets/utils/utils.dart';
import 'package:smartlets/widgets/widgets.dart';

class StudentProfileIndexPage extends StatelessWidget with AutoRouteWrapper {
  final List<ProfileTile> tiles = ProfileTile.list;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
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
      body: SafeArea(
        top: false,
        child: Center(
          child: Padding(
            padding: EdgeInsets.zero.copyWith(top: App.mediaQuery.padding.top * 2),
            child: Column(
              children: [
                AutoSizeText(
                  "Profile",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  minFontSize: 30,
                  textAlign: TextAlign.center,
                ),
                //
                VerticalSpace(height: App.height * 0.02),
                //
                Column(
                  children: [
                    getIt<AuthFacade>().currentUser.fold(
                          () => SizedBox.shrink(),
                          (a) => AuthenticatedProfileTile(user: a),
                        ),
                    //
                    Divider(
                      thickness: 0.7,
                      height: 0.0,
                      indent: 20.0,
                      endIndent: 20.0,
                    ),
                  ],
                ),
                //
                VerticalSpace(height: App.height * 0.02),
                //
                Flexible(
                  child: Column(
                    children: tiles
                        .where((el) =>
                            el.title.caseInsensitiveContains("account") ||
                            el.title.caseInsensitiveContains("sign out") ||
                            el.title.caseInsensitiveContains("Dark Mode"))
                        .map(
                      (tile) {
                        if (!tile.builder.isNull)
                          return Flexible(
                            child: tile.builder(context),
                          );
                        return Flexible(
                          child: ListTile(
                            dense: true,
                            leading: Container(
                              padding: const EdgeInsets.all(6.5),
                              decoration: BoxDecoration(color: tile.leadingColor, borderRadius: BorderRadius.circular(8.0)),
                              child: tile.leading,
                            ),
                            title: Text("${tile.title}", style: const TextStyle(fontSize: 16.5)),
                            subtitle: Text("${tile.subtitle}", style: const TextStyle(fontSize: 13.0)),
                            onTap: () => tile.onPressed(context),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
