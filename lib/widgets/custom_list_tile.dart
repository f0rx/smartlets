import 'dart:math' as math;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartlets/features/on_boarding/manager/on_boarding_cubit.dart';
import 'package:smartlets/utils/utils.dart';

class CustomListTile<T> extends StatelessWidget {
  final String title;
  final Widget icon;
  final T _value;
  final Function onTap;

  const CustomListTile({
    Key key,
    this.title,
    this.icon,
    @required T value,
    @required this.onTap,
  })  : _value = value,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingState>(
      builder: (context, state) => Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Theme.of(context).accentColor),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ClipRRect(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          borderRadius: BorderRadius.circular(8.0),
          child: ListTile(
            onTap: onTap,
            leading: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 45,
              width: 45,
              child: icon ??
                  Transform.rotate(
                    angle: math.pi / 4,
                    child: Icon(
                      Icons.navigation_sharp,
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
            ),
            title: AutoSizeText(title, minFontSize: 16.0),
            contentPadding: EdgeInsets.symmetric(horizontal: App.width * 0.03, vertical: App.width * 0.015),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
            dense: false,
            selected: state.subscription == _value,
            selectedTileColor: Colors.grey.shade600,
          ),
        ),
      ),
    );
  }
}
